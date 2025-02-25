#!/bin/bash
# Exercise 13: Network Connectivity Check

ping -c 1 google.com > /dev/null 2>&1

# $? is the exit status of the last command
# 0: success
# 1: failure
# so, if ping is successful, $? will be 0

if [ $? -eq 0 ]; then
    echo "Internet is working."
else
    echo "No Internet connection."
fi
