#!/bin/bash

notify-send "reloading xfce"
xfce4-panel || xfce4-panel -r && xfwm4 --replace 
xfce4-panel || xfce4-panel -r && xfwm4 --replace 
xfce4-panel || xfce4-panel -r && xfwm4 --replace 
notify-send "xfce reloaded successfully"