#! /usr/bin/bash
#this command is to allow the regEx
shopt -s extglob
#select choice1 in char string
#do
read -p "enter the char:  " choice1
    case $choice1 in 
        "char" )
            read -p "enter the char:  " text
            case $text in
                @([A-Z]) )
                    echo "this is upper case"
                    break
            ;;
                @([a-z]) )
                    echo "this is lower case"
            ;;
                @([1-9]) )
                    echo "this is a number"
            ;;  
            !([A-za-z1-9]) )
                    echo "envaiid syntax"
            ;;
            esac
    ;; 
        "string")
            read -p "enter the word:  " text
            case $text in 
            +([A-Z]) )
            echo "this is upper case"
            ;;
            +([a-z]) )
            echo "this is lower case"
            ;;
            +([1-9]) )
            echo "this is numer "
            ;;
            +([A-Za-z1-9]) )
            echo "this is mixed"
            ;;
            !([A-Za-z1-9]) )
            echo "this is not readable"
            ;;
            esac
    ;;
    esac
#done