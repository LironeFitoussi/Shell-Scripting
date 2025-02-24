#!/bin/bash
usage=$(df / | awk 'NR==2 {print $5}' | tr -d '%')

if [ "$usage" -gt 80 ]; then
  echo "Warning: Disk usage is above 80% ($usage%)."
else
  echo "Disk usage is under control ($usage%)."
fi

# Explanation:
# Retrieve Usage:
# df / gets disk usage for the root partition.
# awk 'NR==2 {print $5}' selects the percentage column from the second line.
# tr -d '%' removes the percent sign.
# Check: The script checks if the numeric usage exceeds 80.
# Output: It warns if usage is above 80%; otherwise, it reports normal usage.