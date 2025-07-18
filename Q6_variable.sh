#!/bin/bash

#global variable
count=10
variable(){
        #local variable
        local count=5

        #printing local variable
        echo "Printing local variable $count"
}

#printing global variable
echo "Printing global variable $count"

variable