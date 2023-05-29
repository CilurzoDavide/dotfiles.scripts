#!/bin/bash

xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/presentation-mode -T

status=$(xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/presentation-mode)

if [ "$status" = "true" ]; then
	notify-send "presentation mode is on"
else
	notify-send "presentation mode is off"
fi