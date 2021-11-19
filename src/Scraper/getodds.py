# -*- coding: utf-8 -*-
import pandas as pd
import json

from datetime import timedelta, datetime
from pytz import timezone

from selenium import webdriver
from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.keys import Keys

url = 'https://www.rotowire.com/betting/nba/'
user_agent = 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/35.0.1916.47 Safari/537.36'
options = webdriver.ChromeOptions()
options.add_argument('disable-gpu')
options.add_argument('headless')
options.add_experimental_option('excludeSwitches', ['enable-logging'])
#options.add_argument(user_agent)

driver = webdriver.Chrome(options=options, executable_path=r'./chromedriver.exe')

driver.get(url)
driver.implicitly_wait(2)

teams = driver.find_elements_by_class_name("hide-until-md")
odds = driver.find_elements_by_class_name("odds-table-odds-link__val")

visit = []
home = []
moneyLine = []
spread = []
ou = []

for i in teams:
    print(i.text)

for j in odds:
    print(j.text)
    
driver.close()


    
