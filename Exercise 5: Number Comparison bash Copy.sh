#!/bin/bash
echo "Enter the first number: "
read num1
echo "Enter the second number: "
read num2

if [ "$num1" -gt "$num2" ]; then
  echo "$num1 is greater than $num2."
elif [ "$num1" -lt "$num2" ]; then
  echo "$num1 is smaller than $num2."
else
  echo "$num1 is equal to $num2."
fi

# Explanation:
# Input: The script collects two numbers.
# Comparison: It uses -gt (greater than) and -lt (less than) to compare them.
# Output: The script prints whether the first number is greater, smaller, or equal to the second.