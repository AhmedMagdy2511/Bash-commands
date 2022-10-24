#! /usr/bin/bash

#Lab2
#<----------Task 1--------------->

echo "Enter Your Name :"
read  name1

echo "Hello $name1"
#<----------------------------------------------------------------------->
#<----------Task 3---------------->
#copy single file to the same destination
read  -p "Enter File path:  " file1
#cp $file1 $file1.copy
: 'if [[ -d $file1.copy || -f $file1.copy ]]; then
    echo "the file already exist"
else 
#    cp $file1 $file1.copy $dest
    cp $file1 $file1.copy
    echo "File have been cos1pied"
    ls
fi'

read -p "if you want to copy single file type '1' if more than one file type '2': " cond
case $cond in
    "1")
        read -p "enter filepath:  " file1
        if [[ -d $file1.copy || -f $file1.copy ]]; then
            echo "the file already exist"
        else 
            #cp $file1 $file1.copy $dest
            cp $file1 $file1.copy
            echo "File have been cos1pied"
            ls
        fi
;;
    "2")
        read -p "if you want to creat a new directory type y if not type n" creation
        
        if [[ $creatin = "y" || $creation = "yes" ]]; then
            while [ true ]
            do
                read -p "enter the folder name:  " folder_name
                
                if [[ -d $folder_name || -f $folder_name ]]; then
                    echo "the file already exist"
                else
                    mkdir $folder_name
                    echo "directory created."
                    break
                fi
            done
        else 
            read "enter the directory path" folder_name
        fi 
          
            #read -p "multi file copying enter files names for fiinshin type end" file_name
            while [ true ]
            do
                read -p "multi file copying enter files names to finsh type "end": " file_name
                if [ $file_name = "end" ];then
                    break
                else
                    cp $file_name $file_name $folder_name/
                fi
            done
            echo "all files copied sucssesfully"
;;
    *)
        echo "worng choice"
;;
esac
#<----------------------------------------------------------------------->
#<----------Task 5---------------->
read -p "if you wantto list current directory press enter /// if you want to list another directory enter the path :  " lspath
if [ -z $lspath ]; then
    ls 
else 
    ls "$lspath" 
fi
#<----------------------------------------------------------------------->
#<----------Task 6---------------->


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

#<----------------------------------------------------------------------->
#<----------Task 7---------------->


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
fi

#<----------------------------------------------------------------------->
#<----------Task 8---------------->

read -p "enter yor logname: " logname
#listing all information in the home directory
ls -il ~
#copying all data
cp -r ~ /tmp
#current process state
sp