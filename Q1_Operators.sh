#!/bin/bash

#getting input user for number
read -p "Enter the first number: " num1
read -p "Enter the second number: " num2

#getting operator
read -p "Enter the operator from this ( + - * / % ): " op

#checking the valid operator
if [[ $op == + || $op == - || $op == * || $op == / || $op == % ]];
then
        #checking Add condition
        if [[ $op == + ]];
        then
                echo "Addition of $num1 & $num2 is $((num1 "$op" num2))"

        #Checking Substract condition
        elif [[ $op == - ]];
        then
                echo "Substraction of $num1 & $num2 is $((num1 "$op" num2))"

        #checking multiplication condition
        elif [[ $op == * ]];
        then
                if [[ $num1 -gt 0 && $num2 -gt 0 ]];
                        then
                                echo "Multiplication of $num1 & $num2 is $((num1 "$op" num2))"
                        else
                                echo "Invalid numbers for multiplication"
                fi


        #Checking Divide condition
        elif [[ $op == / ]];
        then
                if [[ $num1 -gt 0 && $num2 -gt 0 ]];
                then
                        echo "Division of $num1 & $num2 is $((num1 "$op" num2))"
                else
                        echo "Invalid numbers for Division"
                fi


        #Checking modulus condition
        elif [[ $op == % ]]
        then
                if [[ $num1 -gt 0 && $num2 -gt 0 ]];
                then
                        echo "Modulous of $num1 & $num2 is $((num1 "$op" num2))"
                else
                        echo "Invalid number for division"
                fi
        else
                echo "Invalid Operator"
        fi

fi