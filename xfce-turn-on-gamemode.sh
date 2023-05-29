#!/bin/bash

# turn on presentation mode

status=$(xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/presentation-mode)

if [ "$status" = "false" ]; then
	xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/presentation-mode -T
	notify-send "game mode has been activated"
else
	notify-send "game mode has been activated"
fi

# increase brightness to highest
xbacklight -set 20
xbacklight -set 100
