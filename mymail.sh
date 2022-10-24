#! /usr/bin/bash

read -p "Enter email subject:  " mail_subject


#writing the mail body in mtemplate
vim /tmp/mtemplate
mail_body=$(cat /tmp/mtemplate)

users=$(cut -d: -f1 /etc/passwd)

#sending mail 
for l_user in $users 
do
   sendmail -s "$mail_subject" $l_user <<< "$mail_body"
    echo "mail sent to $l_user"
done