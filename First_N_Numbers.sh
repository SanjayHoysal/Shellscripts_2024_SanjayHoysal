#!/bin/bash

echo "Input the number"
read num
n=$num
sum=0

while [ $num -gt 0 ]
do
    sum=`expr $sum + $num`
    num=`expr $num - 1`
done

echo "Sum of first $n numbers are $sum"

