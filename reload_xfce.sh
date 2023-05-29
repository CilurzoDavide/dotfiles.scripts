#!/bin/bash

notify-send "reloading xfce"
# espeak-ng 'started reloading desktop environment'
xfce4-panel &
xfce4-panel -r && xfwm4 --replace
notify-send "xfce reloaded successfully"
# espeak-ng 'desktop environment reloaded successfully'