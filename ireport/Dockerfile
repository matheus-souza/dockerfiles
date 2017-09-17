FROM ubuntu:16.04
MAINTAINER Matheus Henrique de Souza "mh.matheussouza@gmail.com"

RUN apt-get update \
  && apt-get install -y wget openjdk-7-jdk x11-apps \
  && rm -rf /var/lib/apt/lists/*

RUN wget https://ufpr.dl.sourceforge.net/project/ireport/iReport/iReport-4.1.3/iReport-4.1.3.tar.gz -O - | tar xvzf - -C /opt/ > /dev/null

ADD run /usr/local/bin/ireport

RUN chmod +x /usr/local/bin/ireport && \
    mkdir -p /home/developer && \
    echo "developer:x:1000:1000:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:1000:" >> /etc/group && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    chown developer:developer -R /home/developer

USER developer
ENV HOME /home/developer
WORKDIR /home/developer
CMD /usr/local/bin/ireport