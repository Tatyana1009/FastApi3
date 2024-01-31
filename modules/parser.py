# modules/parser.py
import requests
from bs4 import BeautifulSoup

def getIp():
    response = requests.get(url='https://2ip.ru/')
    soup = BeautifulSoup(response.content, 'html.parser')
    title = soup.find('div', class_='ip').find('span')
    return title.text
