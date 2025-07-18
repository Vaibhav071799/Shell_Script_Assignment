#!/bin/bash

read -p "Enter username: " uname
read -p "Enter password: " passwd

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