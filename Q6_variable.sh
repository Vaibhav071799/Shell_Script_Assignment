#!/bin/bash

count=10
variable(){
        local count=5
        echo "Printing local variable $count"
}

echo "Printing global variable $count"

variable