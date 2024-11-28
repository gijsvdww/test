FROM python:3.8-slim

LABEL authors="worpg00"

WORKDIR /TestApi

COPY  requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .


CMD ["python", "App.py"]