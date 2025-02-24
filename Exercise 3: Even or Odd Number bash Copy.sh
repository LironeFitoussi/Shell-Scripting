#!/bin/bash
echo "Enter a number: "
read num

if [ $((num % 2)) -eq 0 ]; then
  echo "$num is even."
else
  echo "$num is odd."
fi

# Explanation:
# Input: The script prompts the user to enter a number.
# Calculation: The modulo operation (num % 2) determines the remainder when divided by 2.
# Output: If the remainder is 0, the number is even; otherwise, it’s odd.