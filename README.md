# scannervibrato

A [LV2](http://lv2plug.in) plug-in for the Chorus or Vibrato
modulation effect used in different tonewheel organs. Based on a
physical informed model implemented in
[Faust](http://faust.grame.fr/). For details see the comments in
`effect.lib`.

## Build

```bash
$ make
```

## Install

```bash
$ make install
```
will copy the `scannervibrato.lv2` directory into `$HOME/.lv2`.

## Run

```bash
$ jalv.qt5 https://github.com/jkbd/scannervibrato
```
or
```bash
$ jalv.gkt3 https://github.com/jkbd/scannervibrato
```

Note: The generic display of the control ports seems to be better in
[Ardour](https://ardour.org/) than in
[Carla](http://kxstudio.linuxaudio.org/Applications:Carla).