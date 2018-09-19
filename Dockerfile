FROM debian:stable

LABEL maintainer="oprax@me.com" 

RUN apt-get update && apt-get install -y gnupg openssl openssh-client
RUN echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu trusty main" >> /etc/apt/sources.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367 && \
    apt-get update && \
apt-get install -y ansible openssh-client
