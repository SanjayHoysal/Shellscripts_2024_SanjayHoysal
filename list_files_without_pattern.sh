#!/bin/bash

echo "Enter the pattern to search"
read pat
grep -r -L "$pat" * > output.txt
if [ $? -eq 0 ]
then
        echo "The below files does not contain the pattern $pat"
        cat output.txt
else
        echo "All files contain the pattern $pat"
fi

