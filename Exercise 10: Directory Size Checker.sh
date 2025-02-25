#!/bin/bash
# Exercise 10: Directory Size Checker

read -p "Enter directory path: " directory

# -d: check if the directory exists

if [ -d "$directory" ]; then
    # du -sh: get the size of the directory
    # cut: cut the output
    # cut -f1: get the first field of the output
    size=$(du -sh "$directory" | cut -f1)
    echo "Total size of directory: $size"
else
    echo "Directory does not exist."
fi
