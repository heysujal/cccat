#!/bin/bash

echo "cccat is running!"

line_number=1

for file in "$@"
do
    if [ ! -e "$file" ]; then
        echo "File does not exist"
    else 
        while read -r line; do
            echo "$line_number. $line"
            line_number=$((line_number+1))
        done < "$file"
    fi
done