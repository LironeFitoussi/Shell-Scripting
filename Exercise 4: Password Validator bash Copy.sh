#!/bin/bash
PASSWORD="secret123"
echo "Enter the password: "
read -s input_password
echo

if [ "$input_password" = "$PASSWORD" ]; then
  echo "Access granted."
else
  echo "Access denied."
fi

# Explanation:
# Stored Password: The variable PASSWORD holds the predefined password.
# Input: The script uses read -s to take a hidden password input.
# Comparison: It compares the input with the stored password and prints the corresponding message.