#!/bin/bash
echo "Enter your name: "
read name
echo "Enter your age: "
read age

if [ "$age" -ge 18 ]; then
  echo "Welcome, $name."
else
  echo "You must be at least 18 years old to proceed."
fi

# Explanation:
# Input: The script prompts for the user's name and age.
# Condition: It checks if the age is 18 or greater using [ "$age" -ge 18 ].
# Output: It displays a welcome message if true; otherwise, it informs the user of the age requirement.