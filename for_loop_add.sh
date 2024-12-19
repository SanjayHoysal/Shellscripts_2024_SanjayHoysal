#!/bin/bash

set -x
arr="10 5 10"
sum=0
for i in $arr
do 
sum=`expr $sum + $i`
done
echo "The sum of $arr is $sum"
