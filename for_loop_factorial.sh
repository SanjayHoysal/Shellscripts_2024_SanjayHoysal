#!/bin/bash

numbers="3 5 7"

for num in $numbers
do
    factorial=1
    for ((i=1; i<=num; i++))
    do
        factorial=$((factorial * i))
    done
    echo "Factorial of $num is $factorial"
done

