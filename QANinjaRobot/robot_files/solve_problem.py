# Import the selenium
import win32api
from selenium import webdriver
from selenium.webdriver.common.keys import Keys

# Actions to solve
options = webdriver.ChromeOptions()
options.add_experimental_option('excludeSwitches', ['enable-logging'])
#driver = webdriver.Chrome(options=options)