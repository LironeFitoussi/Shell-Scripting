#!/bin/bash
# Exercise 15: Process Monitor


# 1. Prompt the user to enter the name of a process.
read -p "Enter process name: " process

# 2. Check if the process is running using pgrep. "> /dev/null" is used to suppress the output, 
# meaning we only care about the exit status. which can be or 0 or 1 and in programming 0 means true and 1 means false.
if pgrep -x "$process" > /dev/null; then
    # 3. If the process is running, display a message indicating that it is running.
    echo "The process '$process' is running."
else
    # 4. If the process is not running, display a message indicating that it is not running.
    echo "The process '$process' is not running."
fi

# pgrep: looks through the currently running processes and lists the process IDs which match the selection criteria to stdout.
# -x: Only match processes whose name (or command line if -f is specified) exactly match the pattern.
# > /dev/null: Redirects the output to /dev/null, which discards it.
# $? is a special variable that holds the exit status of the last command executed. A value of 0 typically indicates success, while a non-zero value indicates an error. In this case, we check if the exit status of pgrep is 0, which means the process was found and is running. If it is not 0, the process is not running.