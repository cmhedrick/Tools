FROM python:3.8.2

EXPOSE 8000

WORKDIR /backend

COPY requirements.txt requirements.txt

RUN apt-get update

RUN python -m pip install --upgrade pip

RUN python -m pip install -r requirements.txt