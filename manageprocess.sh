#!/bin/bash

# Display a list of running processes with their name and memory usage
echo "Running processes:"
ps -eo pid,comm,%mem

# Prompt the user to enter the PID of the process to kill
read -p "Enter the PID of the process to kill: " pid

# Check if a PID was specified
if [ -n "$pid" ]; then
  # Kill the specified process
  echo "Killing process $pid..."
  kill "$pid"

  # Display a message indicating whether the process was killed successfully
  if [ $? -eq 0 ]; then
    echo "Process $pid was killed successfully."
  else
    echo "Failed to kill process $pid."
  fi
else
  # Display a message if no PID was specified
  echo "No PID was specified."
fi
