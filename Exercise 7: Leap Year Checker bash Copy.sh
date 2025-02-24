#!/bin/bash
echo "Enter a year: "
read year

if [ $((year % 400)) -eq 0 ]; then
  echo "$year is a leap year."
elif [ $((year % 4)) -eq 0 ] && [ $((year % 100)) -ne 0 ]; then
  echo "$year is a leap year."
else
  echo "$year is not a leap year."
fi

# Explanation:
# Input: The script asks for a year.
# Leap Year Logic:
# First, it checks if the year is divisible by 400.
# If not, it then checks if it’s divisible by 4 but not by 100.
# Output: It prints whether the year is a leap year.