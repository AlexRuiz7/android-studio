FROM openjdk:8-jdk

LABEL authors="https://www.oda-alexandre.com/"

ENV USER android
ENV LANG fr_FR.UTF-8
ENV VERSION 3.4.1.0
ENV APP https://dl.google.com/dl/android/studio/ide-zips/${VERSION}/android-studio-ide-183.5522156-linux.tar.gz

RUN echo -e '\033[36;1m ******* INSTALL PACKAGES ******** \033[0m' && \
apt-get update && apt-get install -y --no-install-recommends \
sudo \
usbutils \
wget \
libxext6 \
libxrender1 \
libxtst6 \
lib32stdc++6

RUN echo -e '\033[36;1m ******* ADD USER ******** \033[0m' && \
useradd -d /home/${USER} -m ${USER} && \
passwd -d ${USER} && \
adduser ${USER} sudo

RUN echo -e '\033[36;1m ******* SELECT USER ******** \033[0m'
USER ${USER}

RUN echo -e '\033[36;1m ******* SELECT WORKING SPACE ******** \033[0m'
WORKDIR /home/${USER}

RUN echo -e '\033[36;1m ******* INSTALL APP ******** \033[0m'
ADD ${APP} /home/${USER}/android-studio.tar.gz

RUN sudo tar zxvf android-studio.tar.gz && \
rm -rf android-studio.tar.gz

RUN echo -e '\033[36;1m ******* CLEANING ******** \033[0m' && \
sudo apt-get --purge autoremove -y \
wget && \
sudo apt-get autoclean -y && \
sudo rm /etc/apt/sources.list && \
sudo rm -rf /var/cache/apt/archives/* && \
sudo rm -rf /var/lib/apt/lists/*

RUN echo -e '\033[36;1m ******* SELECT WORKING SPACE ******** \033[0m'
WORKDIR /home/${USER}/android-studio/bin

RUN echo -e '\033[36;1m ******* CONTAINER START COMMAND ******** \033[0m'
CMD ./studio.sh \