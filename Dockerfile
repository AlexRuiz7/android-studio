FROM openjdk:8-jdk

MAINTAINER https://oda-alexandre.com

# VARIABLES
ENV USER android \
LANG fr_FR.UTF-8 \
VERSION 3.3.1.0

# INSTALLATION DES PREREQUIS
RUN apt-get update && apt-get install -y --no-install-recommends \
sudo \
locales \
usbutils \
unzip \
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
RUN wget https://dl.google.com/dl/android/studio/ide-zips/${VERSION}/android-studio-ide-182.5264788-linux.zip && \
unzip android-studio-*-linux.zip && \
rm -rf android-studio-*-linux.zip && \

# NETTOYAGE
sudo apt-get --purge autoremove -y \
wget \
unzip && \
sudo apt-get autoclean -y && \
sudo rm /etc/apt/sources.list && \
sudo rm -rf /var/cache/apt/archives/* && \
sudo rm -rf /var/lib/apt/lists/*

# SELECTION ESPACE DE TRAVAIL
WORKDIR /home/${USER}/android-studio/bin

# COMMANDE AU DEMARRAGE DU CONTENEUR
CMD ./studio.sh
