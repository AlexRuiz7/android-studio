# DOCKERIZED ANDROID STUDIO

![logo](https://android.tutorials24x7.com/uploads/2021-05-07/banner/0-configure-jdk-java-sdk-path-android-studio-banner.jpg)

- [ANDROID STUDIO ON DOCKER](#dockerized-android-studio)
  - [INTRODUCTION](#introduction)
  - [PREREQUISITES](#prerequisites)
  - [BUILD](#build)
    - [DOCKER RUN](#docker-run)
    - [DOCKER COMPOSE](#docker-compose)
  - [LICENSE](#license)


## INTRODUCTION

- Uses the latest version of Android Studio to date: [Android Studio 2021.1.1.22 'Bumblebee'](https://developer.android.com/studio)

- Creates a volume on `$HOME/AndroidStudioProjects` to easily share the Android Projects.

## PREREQUISITES

* [Docker](https://www.docker.com)
* [docker-compose](https://docs.docker.com) (recommended)

## BUILD

### DOCKER RUN

```\
docker run -d \
--name android-studio \
--network host \
-e DISPLAY \
-v ${HOME}:/home/android-studio \
-v ${HOME}/AndroidStudioProjects:/home/AndroidStudioProjects \
-v /dev/bus/usb:/dev/bus/usb \
.
```

### DOCKER COMPOSE

https://github.com/AlexRuiz7/android-studio/blob/33862cd40b3b4c3b736e6a23842092e8c30373a9/docker-compose.yml#L1-L16

```
docker-compose build
docker-compose up -d
```

## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/AlexRuiz7/android-studio/blob/master/LICENSE)
