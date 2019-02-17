FROM openjdk:8-jdk

MAINTAINER https://oda-alexandre.github.io

# INSTALLATION DES PREREQUIS
RUN apt-get update && apt-get install -y --no-install-recommends \
sudo \
locales \
usbutils \
unzip \
wget \
lib32stdc++6

# SELECTION DE LA LANGUE FRANCAISE
ENV LANG fr_FR.UTF-8
RUN echo fr_FR.UTF-8 UTF-8 > /etc/locale.gen && locale-gen

# AJOUT UTILISATEUR
RUN useradd -d /home/android -m android && \
passwd -d android && \
adduser android sudo

# SELECTION UTILISATEUR
USER android

# SELECTION ESPACE DE TRAVAIL
WORKDIR /home/android

# INSTALLATION DE L'APPLICATION
RUN wget https://dl.google.com/dl/android/studio/ide-zips/3.3.1.0/android-studio-ide-182.5264788-linux.zip && \
unzip android-studio-*-linux.zip && \
rm -rf android-studio-*-linux.zip

# NETTOYAGE
RUN sudo apt-get --purge autoremove -y \
wget \
unzip && \
sudo apt-get autoclean -y && \
sudo rm /etc/apt/sources.list && \
sudo rm -rf /var/cache/apt/archives/* && \
sudo rm -rf /var/lib/apt/lists/*

# SELECTION ESPACE DE TRAVAIL
WORKDIR /home/android/android-studio/bin

# COMMANDE AU DEMARRAGE DU CONTENEUR
CMD ./studio.sh
