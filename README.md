# ANDROID STUDIO

[![dockeri.co](https://dockeri.co/image/alexandreoda/android-studio)](https://hub.docker.com/r/alexandreoda/android-studio)


## INDEX

- [Badges](#BADGES)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [License](#LICENSE)


## BADGES

[![version](https://images.microbadger.com/badges/version/alexandreoda/android-studio.svg)](https://microbadger.com/images/alexandreoda/android-studio)
[![size](https://images.microbadger.com/badges/image/alexandreoda/android-studio.svg)](https://microbadger.com/images/alexandreoda/android-studio")
[![build](https://img.shields.io/docker/build/alexandreoda/android-studio.svg)](https://hub.docker.com/r/alexandreoda/android-studio)
[![automated](https://img.shields.io/docker/automated/alexandreoda/android-studio.svg)](https://hub.docker.com/r/alexandreoda/android-studio)


## INTRODUCTION

Ce repository contient le fichier Dockerfile de

- [android-studio](https://developer.android.com/studio)

Mis à jour automatiquement dans le [docker hub public](https://hub.docker.com/r/alexandreoda/android-studio/).


## PREREQUIS

Installer [docker](https://www.docker.com)


## INSTALLATION

```
docker run -d --name android-studio -v ${HOME}:/home/android -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v /dev/bus/usb:/dev/bus/usb --privileged -e DISPLAY alexandreoda/android-studio
```


## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/oda-alexandre/android-studio/blob/master/LICENSE)
