#!/bin/bash

echo "Enter the file name:"
read file

line_count=$(wc -l < "$file")

echo "Reversed content of the file:"
while [ $line_count -gt 0 ]
do
    head -n $line_count "$file" | tail -n 1
    line_count=$((line_count - 1))
done

