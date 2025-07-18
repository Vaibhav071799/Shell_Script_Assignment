#!/bin/bash

#discount function
discount(){

        # Getting input from user
        read -p "Enter the product price: " price
        read -p "Enter the discount percentage: " percent

        # Validating the input
        if [[ $price -ge 1 ]];
        then
                if [[ $percent -ge 1 && $percent -le 100 && $percent -gt 50 ]];
                then
                        echo "MEGA SALE..!!!"
                        local final=0
                        dis=$( echo "scale=2; $price*$percent/100" | bc )
                        final=$(echo "scale=2; $price-$dis" | bc )
                        echo $final
                else
                        echo "Invalid Percent"
                fi
        else
                echo "Invalid price"
        fi
}

discount