#!/bin/bash

ls *.html > out
while read line
do
name=`echo $line | awk -F "." '{print $1}'`
echo $name
mv $name.html $name.txt
done < out
