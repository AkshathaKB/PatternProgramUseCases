#!/bin/bash -x

echo "Welcome to Registration from"

read -p "Enter the firstname : " firstname
pat="^[A-Z][a-z]{3,}$";

if [[ $firstname =~ $pat ]]
then
        echo "FristName is present"
else
        echo "FirstName is not present"
fi

read -p "Enter the lastename : " lastname

pat="^[A-Z]{1}[a-z]{3,}$"

if [[ $lastname =~ $pat ]]
then
        echo "LastName is present"
else
        echo "LastName is not present"
fi

read -p "Enter the EmailId : " email

pat="^[0-9a-zA-Z]+([._+-][0-9a-zA-Z]+)*@[0-9a-zA-Z]+.[a-zA-Z]{2,4}([.][a-zA-Z]{2})$"

if [[ $email =~ $pat ]];
then
        echo "Email is valid";
else
        echo "Email is invalid";
fi

read -p "Enter the MobileNumber : " number

pat="^((\+)?91|0)?[6-9][0-9]{9}$"

if [[ $number =~ $pat ]];                                                                                                                                                                        if [[ $number =~ $pat ]];
then
        echo "Number is valid"
else
        echo "Number is invalid"
fi

read-p "Enter the Passsword :" password

pat="^(?=.*[0-9])(?=.*[@$!%*#?&])[a-zA-Z0-9]{8,}$"

if [[ $password =~ $pat ]];
then
        echo "password is valid";
else
        echo "password is invalid";
fi

