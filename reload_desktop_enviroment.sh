#!/bin/bash
password=$(cat /home/tobecci/.scripts/password.txt)
echo $password | /usr/bin/sudo --stdin systemctl restart lightdm