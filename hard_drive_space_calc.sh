#!/bin/bash

# Hard Drive Space Calculator
# Author: Ivan Das

# Get the hard drive path from the user
echo -n "Enter the path of the hard drive (e.g. /dev/sda1): "
read DRIVE_PATH

# Use the df command to show the disk usage of the file systems
DISK_USAGE=$(df -h)

# Get the total disk space of the specified hard drive
TOTAL_DISK_SPACE=$(echo "$DISK_USAGE" | grep "$DRIVE_PATH" | awk '{print $2}')

# Get the used disk space of the specified hard drive
USED_DISK_SPACE=$(echo "$DISK_USAGE" | grep "$DRIVE_PATH" | awk '{print $3}')

# Get the free disk space of the specified hard drive
FREE_DISK_SPACE=$(echo "$DISK_USAGE" | grep "$DRIVE_PATH" | awk '{print $4}')

# Print the results
echo "Total Disk Space: $TOTAL_DISK_SPACE"
echo "Used Disk Space: $USED_DISK_SPACE"
echo "Free Disk Space: $FREE_DISK_SPACE"

# Exit the script
echo "Exiting Hard Drive Space Calculator..."
exit 0
