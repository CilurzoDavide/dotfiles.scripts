#/bin/bash
xbacklight -dec 30
status=$(xbacklight -get)
notify-send "Brightness $(printf "%.1f" $status) %" -h int:value:$status -h string:synchronous:"percentage" --expire-time=200