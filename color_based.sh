#!/bin/bash

echo "Enter the filename to Search"
read filename

echo "Enter the required colour"
read colour

echo "Vehicle Available in the colour $colour"
while read line
do
    car_colour=`echo "$line" | awk -F " " '{print $2}'`
    if [ $car_colour == $colour ]
    then
        echo "$line" | awk -F " " '{print $1}'
    fi
done < $filename

