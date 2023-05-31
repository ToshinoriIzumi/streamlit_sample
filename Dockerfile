FROM python:3.10.11-slim-buster

RUN mkdir /opt/app
WORKDIR /opt/app
COPY ./requirements.txt /opt/app/requirements.txt
ENV PYTHONPATH=/opt/app
RUN pip install -r requirements.txt && rm requirements.txt