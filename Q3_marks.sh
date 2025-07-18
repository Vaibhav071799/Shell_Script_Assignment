#!/bin/bash

#getting input from user for marks
for i in {1..3}
do
        read -p "Enter $i Subject Marks " sub$i
done

#calculating total marks
Marks=$((sub1+sub2+sub3))

#printing result
if [[ $Marks/3 -gt 75 ]];
then
        echo "Distinction."
elif [[ $Marks/3 -gt 35 ]];
then
        echo "Pass."
else
        echo "Failed"
fi