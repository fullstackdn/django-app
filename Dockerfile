FROM python:3.7-alpine
MAINTAINER Fullstack Developer Network ( fullstackdn )

ENV PYTHONUNBUFFERED 1

COPY ./requiremnts.txt /requiremnts.txt
RUN pip install -r /requiremnts.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user







