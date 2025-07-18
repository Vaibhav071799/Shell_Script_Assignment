#!/bin/bash

prime(){
        read -p "Enter a number to check if it prime or not: " num
        local isPrime=1
        if [[ $num -eq 2 ]];
        then
                echo "Is prime"
        elif [[ $num -gt 2 ]];
        then
                for ((i=2;i<$num;i++));
                do
                        if [[ $num%i -eq 0 ]];
                        then
                                isPrime=0
                                break
                        fi
                done
        fi

        if [[ $isPrime -eq 1 ]];
        then
                echo "Prime Number"
        else
                echo "Not a Prime number"
        fi
}


prime