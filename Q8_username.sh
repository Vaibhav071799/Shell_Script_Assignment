#!/bin/bash

# This script checks username and password
#input username and password
read -p "Enter username: " uname
read -p "Enter password: " passwd

# Loop to check username and password
echo
echo "You have 3 attempts to enter correct username and password."
echo "Please enter the username and password correctly."
echo "If you enter incorrect username and password 3 times, the script will exit."
echo "----------------------------------------"
echo
for ((i=1;i<=3;i++));
do
        echo
        read -p "Enter username to check: " uname1
        read -p "Enter password to check: " passwd1

        if [[ $uname = $uname1 && $passwd = $passwd1 ]];
        then
                echo
                echo "Username and Password mattched"
                break;
        else
                echo
                echo "Incorrect Username and Password"
        fi

done