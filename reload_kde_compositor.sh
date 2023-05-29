#!/bin/bash

# restart plasma shell
notify-send --app-name "start" "reloading plasma shell"
espeak-ng "reloading plasma shell"
killall plasmashell
sleep 1
kstart plasmashell &
espeak-ng "completed"
notify-send --app-name "done" "FINISHED reloading plasma shell"

# notify-send --app-name "start" "reloading compositor"
# xdotool key alt+shift+F12
# sleep 3
# xdotool key alt+shift+F12
# notify-send --app-name "end" "reloading compositor"
