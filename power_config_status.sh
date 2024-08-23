#!/bin/bash
notif_id=6969
password=$(cat /home/tobecci/.scripts/password.txt)
result=$((echo $password | sudo --stdin tlp-stat -p) | grep -i perf_pct)
filtered_result=$(echo $result | grep -i perf_pct)

notify-send "TLP STATUS" "$filtered_result" --expire-time=30000 --replace-id=$notif_id
exit