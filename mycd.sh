#! /usr/bin/bash
read -e cdx

 if [ -z $cdx ]; then
    cd $HOME
else 
    cd $cdx
fi

#echo "this is cd"
#cd ~ 
