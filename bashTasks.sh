#! /usr/bin/bash

#Using sed

#Task 1:
sed -n  '/lp/p' /etc/passwd

#Task 2:
sed '/3d/' /etc/passwd

#Task 3:
sed '$d' /etc/passwd

#Task 4:
sed -n  '/lp/p' /etc/passwd

#Task 5:
sed 's/lp/mylp/g' /etc/passwd

#using awk

#Task 1:
awk -F: '{print "Full Name:",$5}' /etc/passwd

#Task 2:
awk -F: '{print $1,$5,$6,NR}' /etc/passwd

#Task 3:
awk -F: '{if ($3>500) print $1,$3,$5}' /etc/passwd

#Task 4:
awk -F: '{if ($3==500) print $1,$3,$5}' /etc/passwd

#Task 5:
awk -F: '{if (NF>=5 && NF<=15){print $0 }}' /etc/passwd

#Task 6:
awk -F : '{i=1;while (i<=NF) {if ($i=="lp") {$i="mylp"} ;i++}print $0}' /etc/passwd

#Task 7:
awk -F: '{for(i=1;i<=NR;i++) {if ($3>max) {max=$3;data=$0} else continue }} END {print "max=",":",data}' /etc/passwd

#Task 8:
awk -F : '{sum+=$3} END {print "Sum =",sum}' /etc/passwd


#Test tasks
#awk -F: '{if (NF==5){i=5; while (i<16) {print $0;i++}}}' /etc/passwd

