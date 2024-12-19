#!/bin/bash

echo "Enter the filename to search"
read filename

echo "What's the budget?"
read budget

echo "Available Vehicles around the budget $budget"
while read line
do
    car_budget=`echo "$line" | awk -F " " '{print $4}'`
    if [ $car_budget -ge $budget ]
    then
        echo "$line" | awk -F " " '{print $1, $4}'
    fi
done < $filename

