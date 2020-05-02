#!/bin/bash -x

echo "Enter Email Address "
read email
pat='^[0-9a-zA-Z]+([._+-][0-9a-zA-Z]+)*@[0-9a-zA-Z]+.[a-zA-Z]{2,4}([.$if [[ $email =~ $pat ]];
then
        echo yes;
else
        echo no;
fi
