from fastapi import FastAPI, Query
from modules.parser import getIp
from datetime import datetime
import pytz

app = FastAPI()

@app.get("/")
def get_current_time(full_name: str = Query("Кузнецова Татьяна Алексеевна", title="Фамилия Имя Отчество")):
    ip_address = getIp()
    
    # Получаем текущее время в Московском часовом поясе
    moscow_timezone = pytz.timezone('Europe/Moscow')
    current_time = datetime.now(moscow_timezone).strftime("%Y-%m-%d %H:%M:%S")

    return {"Текущий IP-Адрес": ip_address, "Полное Имя": full_name, "Московское время": current_time}
