#!/bin/bash
# pkexec sh -c "sudo modprobe -r psmouse && sleep 2 && sudo modprobe psmouse"
# run command reading sudo password from standard input

send_notification(){
    notify-send $1
}


reload_touchpad(){
	password=$(cat ./password.txt)
    libinput-gestures-setup stop
    
    echo $password | sudo --stdin modprobe -r psmouse
    echo $password | sudo --stdin modprobe psmouse
    
    libinput-gestures-setup restart
    libinput-gestures-setup start
}

send_notification "reloading...."
espeak-ng "Searching for your Schlong"
reload_touchpad
espeak-ng "Schlong not found"
send_notification "TOUCHPAD RELOADED"