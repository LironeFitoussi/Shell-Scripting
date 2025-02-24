#!/bin/bash
echo "Enter the first number: "
read num1
echo "Enter the second number: "
read num2
echo "Enter operator (+, -, *, /): "
read op

if [ "$op" = "+" ]; then
  result=$((num1 + num2))
elif [ "$op" = "-" ]; then
  result=$((num1 - num2))
elif [ "$op" = "*" ]; then
  result=$((num1 * num2))
elif [ "$op" = "/" ]; then
  if [ "$num2" -eq 0 ]; then
    echo "Error: Division by zero."
    exit 1
  fi
  result=$((num1 / num2))
else
  echo "Invalid operator."
  exit 1
fi

echo "Result: $result"

# Explanation:

# Input: The script prompts the user for two numbers and an arithmetic operator.
# Calculation: A series of if/elif statements determine which arithmetic operation to perform.
# Division Check: It prevents division by zero.
# Output: The result of the calculation is printed.