#!/bin/bash

# To run the script, make it executable with chmod +x filename.sh and then run it with ./filename.sh

# Display the operating system name and version
echo "Operating System: $(lsb_release -ds)"

# Display the kernel version
echo "Kernel Version: $(uname -r)"

# Display the uptime
echo "Uptime: $(uptime | awk '{print $3 " " $4}')"

# Display the available memory
echo "Available Memory: $(free -h | awk '/^Mem:/ { print $7 }')"

# Display note about the lsb_release command
echo ""
echo "Note: The lsb_release command is used to display the operating system version, and may not be available on all systems. If the command is not found, you can use an alternative command, such as cat /etc/os-release."

