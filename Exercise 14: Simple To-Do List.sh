#!/bin/bash
# Exercise 14: Simple To-Do List

# Declare two arrays to store tasks and their status
declare -a tasks
declare -a status  # 0 for Pending, 1 for Done

# declare: Used to declare variables and give them attributes.
# -a: Used to declare indexed arrays.

# Main loop
while true; do
    echo -e "\nTo-Do List:"
    if [ ${#tasks[@]} -eq 0 ]; then
        echo "No tasks added yet."
    else
        for i in "${!tasks[@]}"; do
            if [ "${status[i]}" -eq 1 ]; then
                stat="Done"
            else
                stat="Pending"
            fi
            echo "$((i+1))). ${tasks[i]} [$stat]"
        done
    fi

    echo -e "\nOptions:"
    echo "1. Add a task"
    echo "2. Mark a task as done"
    echo "3. Exit"
    read -p "Choose an option (1/2/3): " choice

    if [ "$choice" -eq 1 ]; then
        read -p "Enter the task: " task
        tasks+=("$task")
        status+=(0)
    elif [ "$choice" -eq 2 ]; then
        read -p "Enter the task number to mark as done: " tasknum
        index=$((tasknum-1))
        if [ $index -ge 0 ] && [ $index -lt ${#tasks[@]} ]; then
            status[$index]=1
        else
            echo "Invalid task number."
        fi
    elif [ "$choice" -eq 3 ]; then
        break
    else
        echo "Invalid choice. Please try again."
    fi
done
done

echo -e "\nFinal To-Do List:"
if [ ${#tasks[@]} -eq 0 ]; then
    echo "No tasks added."
else
    for i in "${!tasks[@]}"; do
        if [ "${status[i]}" -eq 1 ]; then
            stat="Done"
        else
            stat="Pending"
        fi
        echo "$((i+1))). ${tasks[i]} [$stat]"
    done
fi
