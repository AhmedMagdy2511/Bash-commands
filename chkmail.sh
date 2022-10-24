#! /usr/bin/bash

old_msg=$(grep "Message-Id" /var/mail/ahmed |wc -l)

while [ true ]
do
    new_msg=$(grep "Message-Id" /var/mail/ahmed |wc -l)
    if [[ $new_msg -gt $old_msg ]];then
        num_mails=$(($new_msg-$old_msg))
        echo "you have $num_mails new mail in /var/mail/ahmed"
    else
        echo "you have no new messges"
    fi
    $old_msg=$new_msg
    sleep 10
done