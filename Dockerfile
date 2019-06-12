FROM openjdk:8-jdk

MAINTAINER https://www.oda-alexandre.com/

# VARIABLES
ENV USER android
ENV LANG fr_FR.UTF-8
ENV VERSION 3.4.1.0
ENV APP https://dl.google.com/dl/android/studio/ide-zips/${VERSION}/android-studio-ide-183.5522156-linux.tar.gz

# INSTALLATION DES PREREQUIS
RUN apt-get update && apt-get install -y --no-install-recommends \
sudo \
locales \
usbutils \
wget \
lib32stdc++6 && \

# SELECTION DE LA LANGUE FRANCAISE
echo ${LANG} > /etc/locale.gen && locale-gen && \

# AJOUT UTILISATEUR
useradd -d /home/${USER} -m ${USER} && \
passwd -d ${USER} && \
adduser ${USER} sudo

# SELECTION UTILISATEUR
USER ${USER}

# SELECTION ESPACE DE TRAVAIL
WORKDIR /home/${USER}

# INSTALLATION DE L'APPLICATION
ADD ${APP} /home/${USER}/android-studio.tar.gz

RUN sudo tar zxvf android-studio.tar.gz && \
rm -rf android-studio.tar.gz && \

# NETTOYAGE
sudo apt-get --purge autoremove -y \
wget && \
sudo apt-get autoclean -y && \
sudo rm /etc/apt/sources.list && \
sudo rm -rf /var/cache/apt/archives/* && \
sudo rm -rf /var/lib/apt/lists/*

# SELECTION ESPACE DE TRAVAIL
WORKDIR /home/${USER}/android-studio/bin

# COMMANDE AU DEMARRAGE DU CONTENEUR
CMD ./studio.sh
