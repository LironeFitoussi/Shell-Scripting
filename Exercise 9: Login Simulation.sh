#!/bin/bash
# Exercise 9: Login Simulation

predefined_user="admin"
predefined_pass="password123"

read -p "Enter username: " user
read -s -p "Enter password: " pass
echo ""

if [ "$user" = "$predefined_user" ] && [ "$pass" = "$predefined_pass" ]; then
    echo "Login successful!"
else
    echo "Invalid username or password."
fi
