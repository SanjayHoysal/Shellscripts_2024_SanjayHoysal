#!/bin/bash
set -x
echo "Enter the number of days:"
read days

if [ -n "$days" ]; then
    find . -type f -mmin +$days -exec rm -f {} \;
    echo "Files older than $days days have been deleted."
else
    echo "No input provided"
fi

