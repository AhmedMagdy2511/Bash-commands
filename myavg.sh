#! /usr/bin/bash 

read -p "Enter Array : " -a x
for item in ${x[@]}
do
    typeset sum
    (( sum = $item + sum ))
done
(( avg = $sum / ${#x[@]} ))
echo "the average = " $avg