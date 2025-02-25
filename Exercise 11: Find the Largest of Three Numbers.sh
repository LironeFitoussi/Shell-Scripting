#!/bin/bash
# Exercise 11: Find the Largest of Three Numbers

read -p "Enter first number: " num1
read -p "Enter second number: " num2
read -p "Enter third number: " num3

largest=$num1

if [ "$num2" -gt "$largest" ]; then
    largest=$num2
fi

if [ "$num3" -gt "$largest" ]; then
    largest=$num3
fi

echo "The largest number is: $largest"
