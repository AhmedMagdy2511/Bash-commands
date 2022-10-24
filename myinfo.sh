#! /usr/bin/bash

read -p "enter yor logname: " logname
#listing all information in the home directory
ls -il ~
#copying all data
time cp -r /home/$logname /tmp
#current process state
ps
