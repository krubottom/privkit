FROM ubuntu:latest
MAINTAINER Karl Rubottom "karl.rubottom@gmail.com"

RUN apt-get update && apt-get install -y python python-pip wget git
RUN pip install --upgrade pip && pip install Flask Flask_wtf
RUN mkdir /var/flask

RUN cd /opt/ 
RUN git clone https://github.com/offensive-security/exploit-database

WORKDIR /var/flask

ENTRYPOINT git clone https://github.com/krubottom/privkit && cd /var/flask/privkit/ && python /var/flask/privkit/server.py
