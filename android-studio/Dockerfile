FROM ubuntu:14.04
MAINTAINER Matheus Henrique de Souza "mh.matheussouza@gmail.com"

ENV LANG pt_BR.utf8

RUN sed 's/main$/main universe/' -i /etc/apt/sources.list && \
    apt-get update && apt-get install -y software-properties-common && \
    add-apt-repository -y ppa:maarten-fonville/android-studio && \
    apt-get update && apt-get install -y \
    openjdk-7-jdk \
    lib32z1 \
    lib32ncurses5 \
    curl \
    unzip \
    x11-apps \
    git \
    vim \
    android-studio

ADD run /usr/local/bin/android-studio

RUN chmod +x /usr/local/bin/android-studio && \
    export uid=1000 gid=1000 && \
    mkdir -p /home/developer && \
    echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:${uid}:" >> /etc/group && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    chown ${uid}:${gid} -R /home/developer

USER developer
ENV HOME /home/developer
CMD /usr/local/bin/android-studio
