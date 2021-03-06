import copy
import numpy as np
import pandas as pd
import tensorflow as tf
from datetime import datetime, timezone, timedelta
from colorama import Fore, Style, init, deinit
from tensorflow.keras.models import load_model
from src.Utils import Expected_Value

init()
model = load_model('Models/NN_Models/Trained-Model-ML')
ou_model = load_model("Models/NN_Models/Trained-Model-OU")


def nn_runner(data, todays_games_uo, frame_ml, games, home_team_odds, away_team_odds):
    ml_predictions_array = []
    
    result_df = []
    result_ev = []
    result_line = []
    result_ev_line = []
    
    for row in data:
        ml_predictions_array.append(model.predict(np.array([row])))

    frame_uo = copy.deepcopy(frame_ml)
    frame_uo['OU'] = np.asarray(todays_games_uo)
    data = frame_uo.values
    data = data.astype(float)
    data = tf.keras.utils.normalize(data, axis=1)

    ou_predictions_array = []

    for row in data:
        ou_predictions_array.append(ou_model.predict(np.array([row])))

    count = 0
    for game in games:
        home_team = game[0]
        away_team = game[1]
        winner = int(np.argmax(ml_predictions_array[count]))
        under_over = int(np.argmax(ou_predictions_array[count]))
        winner_confidence = ml_predictions_array[count]
        un_confidence = ou_predictions_array[count]
        
        now = datetime.now()
        tz = now.strftime("%Y/%m/%d")
        
        result_line.append(tz)
        result_line.append("NN")
        result_line.append(away_team)
        result_line.append(home_team)
        
        # Positive odds - 1 plus (the american odds divided by 100) e.g. american odds of 300 = 1 + (300/100) = 4.
        # Negative odds - 1 minus (100 divided by the american odds) e.g. american odds of -300 = 1 - (100/-300) = 1.333
        o = 0.000
        if int(away_team_odds[count]) > 0:
            o = round(1 + (int(away_team_odds[count]) / 100),3)
            result_line.append(o)
        elif int(away_team_odds[count]) < 0:
            o = round(1 - (100 / int(away_team_odds[count])),3)
            result_line.append(o)
        
        if int(home_team_odds[count]) > 0:
            o = round(1 + (int(home_team_odds[count]) / 100),3)
            result_line.append(o)
        elif int(home_team_odds[count]) < 0:
            o = round(1 - (100 / int(home_team_odds[count])),3)
            result_line.append(o)        

        result_line.append(round(winner_confidence[0][0] * 100, 1))
        result_line.append(round(winner_confidence[0][1] * 100, 1))
        result_line.append(todays_games_uo[count])
        
        if winner == 1:
            winner_confidence = round(winner_confidence[0][1] * 100, 1)
            if under_over == 0:
                un_confidence = round(ou_predictions_array[count][0][0] * 100, 1)
                print(Fore.GREEN + home_team + Style.RESET_ALL + Fore.CYAN + f" ({winner_confidence}%)" + Style.RESET_ALL + ' vs ' + Fore.RED + away_team + Style.RESET_ALL + ': ' +
                      Fore.MAGENTA + 'UNDER ' + Style.RESET_ALL + str(todays_games_uo[count]) + Style.RESET_ALL + Fore.CYAN + f" ({un_confidence}%)" + Style.RESET_ALL)
                result_line.append("UNDER")       
                result_line.append(un_confidence)  
            else:
                un_confidence = round(ou_predictions_array[count][0][1] * 100, 1)
                print(Fore.GREEN + home_team + Style.RESET_ALL + Fore.CYAN + f" ({winner_confidence}%)" + Style.RESET_ALL + ' vs ' + Fore.RED + away_team + Style.RESET_ALL + ': ' +
                      Fore.BLUE + 'OVER ' + Style.RESET_ALL + str(todays_games_uo[count]) + Style.RESET_ALL + Fore.CYAN + f" ({un_confidence}%)" + Style.RESET_ALL)
                result_line.append("OVER")
                result_line.append(un_confidence)  
        else:
            winner_confidence = round(winner_confidence[0][0] * 100, 1)
            if under_over == 0:
                un_confidence = round(ou_predictions_array[count][0][0] * 100, 1)
                print(Fore.RED + home_team + Style.RESET_ALL + ' vs ' + Fore.GREEN + away_team + Style.RESET_ALL + Fore.CYAN + f" ({winner_confidence}%)" + Style.RESET_ALL + ': ' +
                      Fore.MAGENTA + 'UNDER ' + Style.RESET_ALL + str(todays_games_uo[count]) + Style.RESET_ALL + Fore.CYAN + f" ({un_confidence}%)" + Style.RESET_ALL)
                result_line.append("UNDER")
                result_line.append(un_confidence)  
            else:
                un_confidence = round(ou_predictions_array[count][0][1] * 100, 1)
                print(Fore.RED + home_team + Style.RESET_ALL + ' vs ' + Fore.GREEN + away_team + Style.RESET_ALL + Fore.CYAN + f" ({winner_confidence}%)" + Style.RESET_ALL + ': ' +
                      Fore.BLUE + 'OVER ' + Style.RESET_ALL + str(todays_games_uo[count]) + Style.RESET_ALL + Fore.CYAN + f" ({un_confidence}%)" + Style.RESET_ALL)
                result_line.append("OVER")
                result_line.append(un_confidence)  
        
        result_df.append(result_line)
        result_line = []
        count += 1

    print("--------------------Expected Value---------------------")
    count = 0
    for game in games:
        
        home_team = game[0]
        away_team = game[1]

        ev_home = float(Expected_Value.expected_value(ml_predictions_array[count][0][1], int(home_team_odds[count])))
        ev_away = float(Expected_Value.expected_value(ml_predictions_array[count][0][0], int(away_team_odds[count])))

        if ev_home > 0:
            print(home_team + ' EV: ' + Fore.GREEN + str(ev_home) + Style.RESET_ALL)
        else:
            print(home_team + ' EV: ' + Fore.RED + str(ev_home) + Style.RESET_ALL)

        if ev_away > 0:
            print(away_team + ' EV: ' + Fore.GREEN + str(ev_away) + Style.RESET_ALL)
        else:
            print(away_team + ' EV: ' + Fore.RED + str(ev_away) + Style.RESET_ALL)
        
        result_ev_line.append(ev_away)
        result_ev_line.append(ev_home)
        result_ev.append(result_ev_line)
        result_ev_line = []
        count += 1

    deinit()
    return result_df, result_ev
