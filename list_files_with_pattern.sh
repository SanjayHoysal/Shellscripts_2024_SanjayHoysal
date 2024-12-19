#!/bin/bash

echo "Enter the pattern to search"
read pat
grep -r -l "$pat" * > output.txt
if [ $? -eq 0 ]
then
	echo "The below files contains the pattern $pat"
	cat output.txt
else
	echo "The given pattern $pat, is not available in the files"
fi
