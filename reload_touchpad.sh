#!/bin/bash
password=$(cat /home/tobecci/.scripts/password.txt)



reload_touchpad(){
    libinput-gestures-setup stop
    echo $password | sudo --stdin modprobe -r psmouse; sudo --stdin modprobe psmouse synaptics_intertouch=1;
    libinput-gestures-setup restart
    libinput-gestures-setup start
}

# send_notification "reloading touchpad...."
redshift -O 1000 > /dev/null 2>&1

reload_touchpad

redshift -x > /dev/null 2>&1
# send_notification "done reloading"
