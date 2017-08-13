FROM ubuntu:latest
MAINTAINER Karl Rubottom "karl.rubottom@gmail.com"

RUN apt-get update
RUN apt-get install -y python python-pip wget
RUN pip install --upgrade pip
RUN pip install Flask
RUN pip install Flask_wtf
RUN apt-get install -y git
RUN mkdir /var/flask

WORKDIR /var/flask

ENTRYPOINT git clone https://github.com/krubottom/OSCP-Study && cd /var/flask/flask-template/ && python /var/flask/flask-template/server.py
#ENTRYPOINT python /var/flask/flask-template/server.py

#RUN python flask-template/server.py
