# ����������� ����������� ����� Python � �������� ��������
FROM python:3.8

# ���������� ������� ���������� � ����������
WORKDIR /app

# ���������� ���� requirements.txt � ��������� � /app
COPY ./requirements.txt /app/

# ���������� �����������
RUN pip install --no-cache-dir -r requirements.txt

# ���������� FastAPI
RUN pip install fastapi

# ���������� ��� ���������� �������� �������� � ��������� /app
COPY . /app/

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "6090"]
