#!/bin/bash

echo "Enter the number:"
read number

val=`expr $number % 7`
if [ $val -eq 0 ]
then
    echo "The given number $number is divisible by 7"
else
    echo "The given number $number is not divisible by 7"
fi

