#! /usr/bin/bash

read -p "how many elements you will enter:  " arr_element

for ((i=0 ; i < $arr_element; i++));
do
    read -p "Enter element: " elements
    arra+=($elements)
done

echo ${arra[@]}