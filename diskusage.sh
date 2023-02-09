#!/bin/bash

# Prompt the user to enter the location to check
read -p "Enter the directory path: " location

# Check if a location was specified, and if not, use the current directory
if [ -z "$location" ]; then
  location="./"
fi

# Display the disk usage of each directory in the specified location
echo "Disk Usage for $location:"
du -sh "$location"/*

# Sort the output by size, in human-readable format
echo ""
echo "Sorted by size (largest first):"
du -sh "$location"/* | sort -hr
