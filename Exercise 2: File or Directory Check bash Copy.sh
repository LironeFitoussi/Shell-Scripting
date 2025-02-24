#!/bin/bash
echo "Enter a path: "
read path

if [ -f "$path" ]; then
  echo "$path is a file."
elif [ -d "$path" ]; then
  echo "$path is a directory."
else
  echo "$path is neither a file nor a directory."
fi

Explanation:

# Input: The script asks for a path.
# Checks:
# [ -f "$path" ] tests if it’s a regular file.
# [ -d "$path" ] tests if it’s a directory.
# Output: It prints the appropriate message based on the check.