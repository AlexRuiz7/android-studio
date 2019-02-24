# ANDROID STUDIO

![android-studio](https://raw.githubusercontent.com/oda-alexandre/android-studio/master/img/logo-android-studio.png) ![docker](https://raw.githubusercontent.com/oda-alexandre/android-studio/master/img/logo-docker.png)


## INDEX

- [Build Docker](#BUILD)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [License](#LICENSE)


## BUILD DOCKER

[![android-studio docker build](https://img.shields.io/docker/build/alexandreoda/android-studio.svg)](https://hub.docker.com/r/alexandreoda/android-studio)


## INTRODUCTION

Ce repository contient le fichier Dockerfile de [android-studio](https://developer.android.com/studio) pour [docker](https://www.docker.com), mis à jour automatiquement dans le [docker hub](https://hub.docker.com/r/alexandreoda/android-studio/) public.


## PREREQUIS

Installer [docker](https://www.docker.com)


## INSTALLATION

```
docker run -d --name android-studio -v ${HOME}:/home/android-studio -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v /dev/bus/usb:/dev/bus/usb --privileged -e DISPLAY alexandreoda/android-studio
```


## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/oda-alexandre/android-studio/blob/master/LICENSE)
