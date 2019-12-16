# ANDROID STUDIO

<img src="https://s14-eu5.startpage.com/wikioimage/fb879d295824b1c73d3d2181e4df5c5c.png" width="200" height="200"/>

## INDEX

  - [INDEX](#index)
  - [BADGES](#badges)
  - [INTRODUCTION](#introduction)
  - [PREREQUISITES](#prerequisites)
  - [INSTALL](#install)
  - [LICENSE](#license)

## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/android-studio/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/android-studio/commits/master)

## INTRODUCTION

Docker image of :

- [android-studio](https://developer.android.com/studio)

Continuous integration on :

- [gitlab](https://gitlab.com/oda-alexandre/android-studio/pipelines)

Automatically updated on :

- [docker hub public](https://hub.docker.com/r/alexandreoda/android-studio/)

## PREREQUISITES

Use [docker](https://www.docker.com)

## INSTALL

```docker run -d --name android-studio -v ${HOME}:/home/android-studio -v /tmp/.X11-unix/:/tmp/.X11-unix/ -v /dev/bus/usb:/dev/bus/usb -e DISPLAY --privileged --network host alexandreoda/android-studio```

## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://gitlab.com/oda-alexandre/android-studio/blob/master/LICENSE)
