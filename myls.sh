#! /usr/bin/bash

read -p "if you wantto list current directory press enter /// if you want to list another directory enter the path :  " lspath
if [ -z $lspath ]; then
    ls 
else 
    ls "$lspath" 
fi
