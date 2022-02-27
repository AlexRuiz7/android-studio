FROM openjdk:8-jdk

ENV USER android
ENV HOME /home/${USER}
ENV APP https://redirector.gvt1.com/edgedl/android/studio/ide-zips/2021.1.1.22/android-studio-2021.1.1.22-linux.tar.gz

RUN echo -e '\033[36;1m ******* INSTALL PACKAGES ******** \033[0m' && \
  apt update && apt install -y --no-install-recommends \
  sudo \
  usbutils \
  wget \
  libxext6 \
  libxrender1 \
  libxtst6 \
  lib32stdc++6 && \
  rm -rf /var/lib/apt/lists/*

RUN echo -e '\033[36;1m ******* ADD USER ******** \033[0m' && \
  useradd -d ${HOME} -m ${USER} && \
  passwd -d ${USER} && \
  adduser ${USER} sudo

RUN echo -e '\033[36;1m ******* SELECT USER ******** \033[0m'
USER ${USER}

RUN echo -e '\033[36;1m ******* SELECT WORKING SPACE ******** \033[0m'
WORKDIR ${HOME}

RUN echo -e '\033[36;1m ******* INSTALL APP ******** \033[0m' && \
  wget ${APP} -O ${HOME}/android-studio.tar.gz && \
  sudo tar zxvf android-studio.tar.gz && \
  rm -rf android-studio.tar.gz && \
  sudo apt-get --purge autoremove -y wget

RUN echo -e '\033[36;1m ******* SELECT WORKING SPACE ******** \033[0m'
WORKDIR ${HOME}/android-studio/bin

RUN echo -e '\033[36;1m ******* CONTAINER START COMMAND ******** \033[0m'
CMD ./studio.sh \
