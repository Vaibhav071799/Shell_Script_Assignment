#!/bin/bash

# Check if Java is installed
if java -version &>/dev/null;
then
        echo "Java installed"
else
        echo "Not installed"
fi