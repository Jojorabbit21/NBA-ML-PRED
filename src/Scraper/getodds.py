# -*- coding: utf-8 -*-
import pandas as pd
import os.path

from src.Utils.Dictionaries import team_rotowire
from datetime import datetime
from pytz import timezone
from time import sleep
from selenium import webdriver
from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.keys import Keys

def scrape_odds(date):
    
    url = 'https://www.rotowire.com/betting/nba/?date=' + date

    user_agent = 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.47 Safari/537.36'
    options = webdriver.ChromeOptions()
    options.add_argument('disable-gpu')
    options.add_argument('headless')
    options.add_experimental_option('excludeSwitches', ['enable-logging'])
    #options.add_argument(user_agent)

    driver = webdriver.Chrome(options=options, executable_path=r'./src/Scraper/chromedriver.exe')
    driver.get(url)
    driver.implicitly_wait(2)
    sleep(2)
    teams = driver.find_elements_by_class_name("hide-until-md")
    odds = driver.find_elements_by_class_name("odds-table-odds-link__val")
    
    visit = []
    home = []
    visit_odds = []
    home_odds = []
    ou = []

    for a in range(4):
        for b in range(len(teams)):
            target = a*len(teams)+b
            if a == 0:
                if b%2==0:
                    try:
                        visit.append(team_rotowire[teams[target].text])
                    except:
                        visit.append('None')
                    try:
                        visit_odds.append(odds[target].text)
                    except:
                        visit_odds.append(0)
                else:
                    try:
                        home.append(team_rotowire[teams[target].text])
                    except:
                        home.append('None')
                    try:
                        home_odds.append(odds[target].text)
                    except:
                        home_odds.append(0)
            elif a == 1:
                pass
            elif a == 2:
                if b%2==0:
                    try:
                        t = str(odds[target].text)
                        ou.append(t[2:])
                    except:
                        ou.append(0)
    
    driver.close()
            
    df = pd.DataFrame()
    df["Visit"] = visit
    df['Home'] = home
    df['V_Odd'] = visit_odds
    df['H_Odd'] = home_odds
    df['OU'] = ou

    return df

def scrape_odds_history(season:str='2020-21'):
    path = './Schedules/nba_{}.csv'.format(season)
    df = pd.read_csv(path,header=0)
    df = df.loc[:,['Visit','Home','V_Odd','H_Odd','OU']]
    return df
    
