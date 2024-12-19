#!/bin/bash

echo "Enter the filename"
read filename

echo "$(cat -n $filename)"

