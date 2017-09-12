FROM ubuntu:14.04
MAINTAINER Matheus Henrique de Souza "mh.matheussouza@gmail.com"

RUN apt-get update \
  && apt-get install -y wget openjdk-7-jdk x11-apps \
  && rm -rf /var/lib/apt/lists/*

RUN wget https://ufpr.dl.sourceforge.net/project/ireport/iReport/iReport-4.1.3/iReport-4.1.3.tar.gz -O - | tar xvzf - -C /opt/ > /dev/null

ADD run /usr/local/bin/ireport
