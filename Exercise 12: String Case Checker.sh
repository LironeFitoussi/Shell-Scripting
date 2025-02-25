#!/bin/bash
# Exercise 12: String Case Checker

read -p "Enter a string: " input_string

# tr: translate characters
# [:lower:]: all lowercase letters
# [:upper:]: all uppercase letters
# tr '[:lower:]' '[:upper:]': translate lowercase to uppercase
# tr '[:upper:]' '[:lower:]': translate uppercase to lowercase


upper=$(echo "$input_string" | tr '[:lower:]' '[:upper:]')
lower=$(echo "$input_string" | tr '[:upper:]' '[:lower:]')

if [ "$input_string" = "$upper" ]; then
    echo "The string is in uppercase."
elif [ "$input_string" = "$lower" ]; then
    echo "The string is in lowercase."
else
    echo "The string is in mixed case."
fi
