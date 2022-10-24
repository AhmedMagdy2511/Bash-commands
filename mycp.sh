#! /usr/bin/bash

#this script is using the case to give the user the ability to choose between multi file copying or single file copy
read -p "if you want to copy single file type '1' if more than one file type '2': " cond
case $cond in
#the first choice  1 is the single file copy to the current directorey 
    "1")
        read -p "enter file name:  " file1
        if [[ -d $file1.copy || -f $file1.copy ]]; then
            echo "this file already exist"
        elif [[ -d $file1 || -f $file1 ]]; then
           cp $file1 $file1.copy
            echo "File have been cos1pied"
            ls
        else 
            #cp $file1 $file1.copy $dest
            echo "this file doesn't exist"
        fi
;;
#the secound choicce 2 is for the multi  copy and can copy to destenations
    "2")
	read -p "if you want to creat a new directory type 'y' if not type 'n':  " creation
        
        if [[ $creation = "y" || $creation = "yes" ]]; then
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
        elif  [[ $creation = "n" || $creation = "no" ]]; then
            read "enter the directory path:  " folder_name
        fi  
        #read -p "multi file copying enter files names for fiinshin type end" file_name
        while [ true ]
        do
            read -p "multi file copying enter files names to finsh type 'end': " file_name
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
