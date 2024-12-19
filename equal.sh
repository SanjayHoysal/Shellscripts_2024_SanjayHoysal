#!/bin/bash

echo "Enter a number to check number entered is equal to 3 or not"
read number

if [ "$number" -eq 3 ]; then
    echo "The number is equal to 3."
else
    echo "The number is not equal to 3."
fi

