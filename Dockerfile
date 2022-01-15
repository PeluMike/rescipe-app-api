FROM python:3.7-alpine

MAINTAINER Pelumike

ENV PYTHONUNBUFERED 1

COPY ./file.txt /file.txt

RUN pip install -r /file.txt

 
RUN mkdir /app
WORKDIR /app
COPY ./app /app


RUN adduser -D user
USER user