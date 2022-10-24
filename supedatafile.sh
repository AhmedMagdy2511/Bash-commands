#! /bin/bash


echo "this is file 2: ""$num"
#echo "$x"
#echo "$vlaueS1.$num"
#echo "$vlaueS1.$x"




: 'echo "$*"
file='/home/ahmed/Desktop/DevOps/Bash/Lab2/s1.sh'  
echo  $file
i=1  
while read line; do  
  
#Reading each line  
echo "Line No. $# : $line"  
i=$((i+1))  ds
done < $file'
#echo "enter filepath"



#read -p "enter destianrion:  " dest
#newfile=$file1.copy

#cp $file1 $file1.copy




#<------------------------------------------------------------------------------------------------------>
: 'read -p  "enter the type you want to list: 
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
fi'

: '
read -p "enter the file/directory:  " file1
if [ -f $file1 ]; then
    echo "the file is a file"
    #cheack the writability
    if [ -w $file1 ];then
        echo "the file is writable"
    else
        echo "the file is not writable"
    fi
    #cheack the redability
    if [ -r $file1 ];then
        echo "the file is readable"
    else
        echo "the file is not readable"
    fi
    #cheack the excutable
    if [ -x $file1 ];then
        echo "the file is excutable"
    else
        echo "the file is not excutable"
    fi
elif [ -d $file1 ]; then
    echo "this is a directory"
    #cheack the writability
    if [ -w $file1 ];then
        echo "the directory is writable"
    else
        echo "the directory is not writable"
    fi
    #cheack the redability
    if [ -r $file1 ];then
        echo "the directory is readable"
    else
        echo "the directory not readable"
    fi
    #cheack the excutable
    if [ -x $file1 ];then
        echo "the directory is excutable"
    else
        echo "the directory not excutable"
    fi
fi '



: 'read -p "enter yor logname: " logname
#listing all information in the home directory
ls -il ~
#copying all data
cp -r ~ /tmp
#current process state
sp'
#--------------------------Lab3 Bash Task7----------------------------------------
: 'typeset -i n1
typeset -i n2
n1=1
n2=1
while test $n1 -eq $n2
do
n2=$n2+1
echo $n1
if [ $n1 -gt $n2 ]
then
break
else
continue
fi
n1=$n1+1
echo $n2
done'
#--------------------------Lab3 Bash Task8----------------------------------------
: 'select choice  in ls ls-a exit
do 
case $choice in
ls)
    ls
;;
ls-a)
    ls -a
;;
exit)
    break
;;
esac
done'
#------------------------------------------------------------------

: 'read -p "Enter Array : " -a x
#Enter Array : 10 20 30 Mina Ali
echo ${x[5]}
#10 20 30 0 0
'
#--------------------------Lab3 Bash Task11----------------------------------------

function square () {
    (( sq = $1 * $1 ))
    return $sq
}
echo "the sum is"
square 3
echo $?
echo $sq