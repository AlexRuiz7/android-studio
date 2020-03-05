# ANDROID STUDIO

![logo](https://assets.gitlab-static.net/uploads/-/system/project/avatar/12904438/Android-Studio-3.3-1.png)

## INDEX

- [ANDROID STUDIO](#android-studio)
  - [INDEX](#index)
  - [BADGES](#badges)
  - [INTRODUCTION](#introduction)
  - [PREREQUISITES](#prerequisites)
  - [INSTALL](#install)
    - [DOCKER RUN](#docker-run)
    - [DOCKER COMPOSE](#docker-compose)
  - [LICENSE](#license)

## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/android-studio/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/android-studio/commits/master)

## INTRODUCTION

Docker image of :

- [android-studio](https://developer.android.com/studio)

Continuous integration on :

- [gitlab pipelines](https://gitlab.com/oda-alexandre/android-studio/pipelines)

Automatically updated on :

- [docker hub public](https://hub.docker.com/r/alexandreoda/android-studio/)

## PREREQUISITES

Use [docker](https://www.docker.com)

## INSTALL

### DOCKER RUN

```\
docker run -d \
--name android-studio \
--network host \
-e DISPLAY \
-v ${HOME}:/home/android-studio \
-v /dev/bus/usb:/dev/bus/usb \
alexandreoda/android-studio
```

### DOCKER COMPOSE

```yml
version: "3.7"

services:
  android-studio:
    container_name: android-studio
    image: alexandreoda/android-studio
    restart: "no"
    network_mode: host
    privileged: false
    environment:
      - DISPLAY
    volumes:
      - "${HOME}:/home/android-studio"
      - "/tmp/.X11-unix/:/tmp/.X11-unix/"
      - "/dev/bus/usb:/dev/bus/usb"
```

## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://gitlab.com/oda-alexandre/android-studio/blob/master/LICENSE)
