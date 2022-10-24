#! /usr/bin/bash


read -p "enter the file/directory:  " file1
if [ -f $file1 ]; then
    echo "this is a file"
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
