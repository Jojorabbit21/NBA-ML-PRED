import argparse
import pandas as pd
import tensorflow as tf
import csv

from src.Predict import NN_Runner, XGBoost_Runner
from src.Utils.Dictionaries import team_index_current, team_initials
from src.Utils.tools import get_json_data, to_data_frame

todays_games_url = 'https://data.nba.com/data/10s/v2015/json/mobile_teams/nba/2021/scores/00_todays_scores.json'
data_url = 'https://stats.nba.com/stats/leaguedashteamstats?' \
           'Conference=&DateFrom=&DateTo=&Division=&GameScope=&' \
           'GameSegment=&LastNGames=0&LeagueID=00&Location=&' \
           'MeasureType=Base&Month=0&OpponentTeamID=0&Outcome=&' \
           'PORound=0&PaceAdjust=N&PerMode=PerGame&Period=0&' \
           'PlayerExperience=&PlayerPosition=&PlusMinus=N&Rank=N&' \
           'Season=2021-22&SeasonSegment=&SeasonType=Regular+Season&ShotClockRange=&' \
           'StarterBench=&TeamID=0&TwoWay=0&VsConference=&VsDivision='


def createTodaysGames(df):
    
    # Visitor,Home,VisitorML,HomeML,UO
    input_list = []
    games = []
    match_data = []
    todays_games_uo = []
    home_team_odds = []
    away_team_odds = []
        
    file = open("./Schedules/schedules.csv", "r")
    r = csv.reader(file)
    for lines in r:
        input_list.append(lines)
    file.close()
    
    for game in input_list:
        home_team = team_initials[game[1]]
        away_team = team_initials[game[0]]
        # print([home_team, away_team])
        home_team_odds.append(game[3])
        away_team_odds.append(game[2])
        todays_games_uo.append(game[4])
        # print([game[3],game[2],game[4]])
        home_team_series = df.iloc[team_index_current.get(home_team)]
        away_team_series = df.iloc[team_index_current.get(away_team)]
        # print([home_team_series, away_team_series])
        stats = home_team_series.append(away_team_series)
        match_data.append(stats)
        games.append([home_team, away_team])     

    games_data_frame = pd.concat(match_data, ignore_index=True, axis=1)
    games_data_frame = games_data_frame.T

    frame_ml = games_data_frame.drop(columns=['TEAM_ID', 'CFID', 'CFPARAMS', 'TEAM_NAME'])
    data = frame_ml.values
    data = data.astype(float)

    return games, data, todays_games_uo, frame_ml, home_team_odds, away_team_odds


def main():
    # data = get_todays_games_json(todays_games_url)
    data = get_json_data(data_url)
    df = to_data_frame(data)
    games, data, todays_games_uo, frame_ml, home_team_odds, away_team_odds = createTodaysGames(df)
    if args.nn:
        print("------------Neural Network Model Predictions-----------")
        data = tf.keras.utils.normalize(data, axis=1)
        NN_Runner.nn_runner(data, todays_games_uo, frame_ml, games, home_team_odds, away_team_odds) # games => [home,away]
        print("-------------------------------------------------------")
    if args.xgb:
        print("---------------XGBoost Model Predictions---------------")
        XGBoost_Runner.xgb_runner(data, todays_games_uo, frame_ml, games, home_team_odds, away_team_odds)
        print("-------------------------------------------------------")
    if args.A:
        print("---------------XGBoost Model Predictions---------------")
        XGBoost_Runner.xgb_runner(data, todays_games_uo, frame_ml, games, home_team_odds, away_team_odds)
        print("-------------------------------------------------------")
        data = tf.keras.utils.normalize(data, axis=1)
        print("------------Neural Network Model Predictions-----------")
        NN_Runner.nn_runner(data, todays_games_uo, frame_ml, games, home_team_odds, away_team_odds)
        print("-------------------------------------------------------")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Model to Run')
    parser.add_argument('-xgb', action='store_true', help='Run with XGBoost Model')
    parser.add_argument('-nn', action='store_true', help='Run with Neural Network Model')
    parser.add_argument('-A', action='store_true', help='Run all Models')
    args = parser.parse_args()
    main()
