#!/bin/bash
password=$(cat /home/tobecci/.scripts/password.txt)

reload_touchpad(){
    /usr/bin/killall --quiet libinput-gestures
    /usr/bin/libinput-gestures-setup stop > /dev/null 2>&1

    echo $password | /usr/bin/sudo --stdin /usr/bin/sudo --stdin /sbin/modprobe -r psmouse; /usr/bin/sudo --stdin /sbin/modprobe psmouse;
    #echo $password | /usr/bin/sudo --stdin /sbin/modprobe -r i2c_i801; /usr/bin/sudo --stdin /sbin/modprobe i2c_i801;

    /usr/bin/libinput-gestures-setup restart > /dev/null 2>&1
    /usr/bin/libinput-gestures-setup start > /dev/null 2>&1 &
}

/usr/bin/redshift -O 1000 > /dev/null 2>&1 &

# send_notification "reloading touchpad...."
/usr/bin/notify-send 'reload touchpad script' "reloading touchpad......"
reload_touchpad
/usr/bin/redshift -x > /dev/null 2>&1
# disable middle click
/usr/bin/xinput set-button-map 10 1 0 3 4 5 6 7
# send_notification "done reloading"
/usr/bin/notify-send 'reload touchpad script' "completed"
