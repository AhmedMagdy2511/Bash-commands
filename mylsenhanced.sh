#! /usr/bin/bash
read -p  "enter the type you want to list: 
        a)list in long format
        b)list all entries including the hiding files.
        c)if an argument is a directory
        d)print inode number
        e)recursively list subdirectories
        f)if you do not want any of this press enter 
        :  " type1
if [ -z $type1 ]; then
    read -p "if you wantto list current directory press enter /// if you want to list another directory enter the path :  " lspath
    if [ -z $lspath ]; then
        ls 
    else 
        ls "$lspath" 
    fi
elif [ $type1 = "a" ];then
    read -p "if you wantto list current directory press enter /// if you want to list another directory enter the path :  " lspath
    if [ -z $lspath ]; then
    ls -l
    else 
    ls -l "$lspath" 
    fi
elif [ $type1 = "b" ];then
    read -p "if you wantto list current directory press enter /// if you want to list another directory enter the path :  " lspath
    if [ -z $lspath ]; then
    ls -a
    else 
    ls -a "$lspath" 
    fi
elif [ $type1 = "c" ];then
    if [ -d $type1  ];then
        read -p "if you wantto list current directory press enter /// if you want to list another directory enter the path :  " lspath
        if [ -z $lspath ]; then
        ls -d
        else 
        ls -d "$lspath" 
        fi
    else 
        echo "this is not a directory"
    fi
elif [ $type1 = "d" ];then
    read -p "if you wantto list current directory press enter /// if you want to list another directory enter the path :  " lspath
    if [ -z $lspath ]; then
    ls -i
    else 
    ls -i "$lspath" 
    fi
elif [ $type1 = "e" ];then
    read -p "if you wantto list current directory press enter /// if you want to list another directory enter the path :  " lspath
    if [ -z $lspath ]; then
    ls -R
    else 
    ls -R "$lspath" 
    fi
else 
    echo "Wrong choice"
fi
