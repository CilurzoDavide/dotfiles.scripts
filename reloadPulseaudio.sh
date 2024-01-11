#!/bin/bash
event_name='RELOADING_PULSEAUDIO'
notify-send "${event_name}: START....."
systemctl --user stop pulseaudio.socket
systemctl --user stop pulseaudio.service
systemctl --user start pulseaudio.socket
systemctl --user start pulseaudio.service
epseak-ng "testing, 1, 2, 3"
notify-send "${event_name}: END ✔"