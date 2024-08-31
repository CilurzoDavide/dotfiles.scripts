#!/bin/bash

lock_file='/home/tobecci/.cache/tobecci/keepalive/presentation.lck'

xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/presentation-mode -T

status=$(xfconf-query -c xfce4-power-manager -p /xfce4-power-manager/presentation-mode)

if [ "$status" = "true" ]; then
	touch $lock_file
	notify-send "presentation mode is on"
else
	rm $lock_file
	notify-send "presentation mode is off"
fi