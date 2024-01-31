# Используйте официальный образ Python в качестве базового
FROM python:3.8

# Установите рабочую директорию в контейнере
WORKDIR /app

# Скопируйте файл requirements.txt в контейнер в /app
COPY ./requirements.txt /app/

# Установите зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Установите FastAPI
RUN pip install fastapi

# Скопируйте все содержимое текущего каталога в контейнер /app
COPY . /app/

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "6090"]
