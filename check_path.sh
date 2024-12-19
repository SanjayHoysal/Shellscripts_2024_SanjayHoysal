#!/bin/bash

echo "Enter the path to check"
read name
if [ -f $name ]
then
	echo "Given path is file"
elif [ -d $name ]
then
	echo "Given path is directory"
elif [ -L $name ]
then
	echo "Given path is link"
else
	echo "The path does not exist"
fi

