#!/bin/bash -x
#usecase 1,2,3

echo -p "Enter the Postal Index Number"
read pin
pat="[^0-9]{1}*[0-9]{5}*$"
if [[ $pin =~ $pat ]];
then
        echo valid number;
else
        echo invalid number;
fi




