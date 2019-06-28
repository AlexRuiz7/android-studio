# IMAGE TO USE
FROM openjdk:8-jdk

# MAINTAINER
MAINTAINER https://www.oda-alexandre.com/

# VARIABLES
ENV USER android
ENV LANG fr_FR.UTF-8
ENV VERSION 3.4.1.0
ENV APP https://dl.google.com/dl/android/studio/ide-zips/${VERSION}/android-studio-ide-183.5522156-linux.tar.gz

# INSTALL OF PACKAGES
RUN apt-get update && apt-get install -y --no-install-recommends \
sudo \
usbutils \
wget \
libxext6 \
libxrender1 \
libxtst6 \
lib32stdc++6 && \

# ADD USER
useradd -d /home/${USER} -m ${USER} && \
passwd -d ${USER} && \
adduser ${USER} sudo

# SELECT USER
USER ${USER}

# SELECT WORKING SPACE
WORKDIR /home/${USER}

# INSTALL APP
ADD ${APP} /home/${USER}/android-studio.tar.gz

RUN sudo tar zxvf android-studio.tar.gz && \
rm -rf android-studio.tar.gz && \

# CLEANING
sudo apt-get --purge autoremove -y \
wget && \
sudo apt-get autoclean -y && \
sudo rm /etc/apt/sources.list && \
sudo rm -rf /var/cache/apt/archives/* && \
sudo rm -rf /var/lib/apt/lists/*

# SELECT WORKING SPACE
WORKDIR /home/${USER}/android-studio/bin

# START THE CONTAINER
CMD ./studio.sh
