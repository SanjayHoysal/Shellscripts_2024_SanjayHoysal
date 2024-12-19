#!/bin/bash

echo "Input the number to get factorial"
read num
n=$num
factorial=1

while [ $num -gt 0 ]
do
    factorial=`expr $factorial \* $num`
    num=`expr $num - 1`
done

echo "Factorial of $n is $factorial"

