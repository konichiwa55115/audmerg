FROM python:3.9-buster
RUN apt update && apt upgrade -y
RUN apt-get update && apt-get upgrade -y
RUN apt install git curl python3-pip -y
RUN apt install curl -y
RUN apt install apt-transport-https ca-certificates curl software-properties-common -y
RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg 
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
RUN apt-cache policy docker-ce
RUN apt install docker -y
RUN apt install dos2unix -y
RUN pip3 install -U pip
COPY requirements.txt /requirements.txt
RUN cd /
RUN pip3 install -U -r requirements.txt
RUN mkdir /kony
WORKDIR /kony
COPY start.sh /start.sh
RUN dos2unix /start.sh
CMD ["/bin/bash", "/start.sh"]
