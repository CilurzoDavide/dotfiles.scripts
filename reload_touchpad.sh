#!/bin/bash
password=$(cat /home/tobecci/.scripts/password.txt)
log_file="/home/tobecci/.scripts/reload_touchpad.log"

send_notification(){
    notify-send $1
}

divide_log(){
	echo '' >> $log_file
	echo '' >> $log_file
}

reload_touchpad(){
    current_timestamp=$(date)
    echo "$current_timestamp" >> $log_file
	
    # no password input required
	echo 'stopping libinput' >> $log_file
    libinput-gestures-setup stop >> $log_file
    
	echo 'reloading psmouse' >> $log_file
    echo $password | sudo --stdin modprobe -r psmouse; echo $? >> $log_file; sudo --stdin modprobe psmouse >> $log_file; echo $? >> $log_file;
	echo 'psmouse reloaded' >> $log_file
    
	libinput-gestures-setup restart >> $log_file
    libinput-gestures-setup start >> $log_file
}

# send_notification "reloading touchpad...."
redshift -O 1000

reload_touchpad
divide_log

redshift -x
# send_notification "done reloading"


# libinput-gestures-setup stop
# pkexec sh -c "sudo modprobe -r psmouse; sudo modprobe psmouse"
# libinput-gestures-setup restart
# libinput-gestures-setup start
