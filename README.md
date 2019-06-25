# ANDROID STUDIO

<img src="https://s14-eu5.startpage.com/wikioimage/fb879d295824b1c73d3d2181e4df5c5c.png"/>


## INDEX

- [Badges](#BADGES)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [License](#LICENSE)


## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/android-studio/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/android-studio/commits/master)


## INTRODUCTION

Ce repository contient le fichier Dockerfile de

- [android-studio](https://developer.android.com/studio)

Mis à jour automatiquement dans le [docker hub public](https://hub.docker.com/r/alexandreoda/android-studio/).


## PREREQUIS

Installer [docker](https://www.docker.com)


## INSTALLATION

```
docker run -d --name android-studio -v ${HOME}:/home/android-studio -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v /dev/bus/usb:/dev/bus/usb --privileged -e DISPLAY alexandreoda/android-studio
```


## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/oda-alexandre/android-studio/blob/master/LICENSE)
