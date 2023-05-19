FROM python:3.11-slim-buster

LABEL authors="adityasamant"

WORKDIR /app

RUN apt update && apt install -y gcc python3-dev

COPY requirements.txt .

RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

ENV FLASK_RUN_HOST=0.0.0.0

EXPOSE 5000

CMD ["flask", "run"]