#!/bin/bash

factorial(){

        #Reading input from user
        read -p "Enter the number for factorial: " num

        #setting local variable
        local fact=1

        #base condition
        while [ $num -gt 0 ];
        do
    #setting factoral condition
                fact=$((fact*num))
                ((num--))
        done
        echo "Factorial is $fact"
}
factorial