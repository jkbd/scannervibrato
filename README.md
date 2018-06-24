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

Then copy the `scannervibrato.lv2` directory into your `LV2_PATH`,
e.g. `$HOME/.lv2` on Linux.
