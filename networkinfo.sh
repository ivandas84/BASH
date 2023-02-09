#!/bin/bash

# Display menu of network information options
echo "Network information options:"
echo "1. Display IP address"
echo "2. Display network interfaces"
echo "3. Display established connections"
echo "4. Display open ports"
echo "5. Display routing table"
echo "6. Display network statistics"
echo "7. Display DNS settings"

# Prompt the user to choose a number
read -p "Enter a number (1-7): " choice

# Process the user's choice
case $choice in
  1)
    # Display IP address
    echo "IP address:"
    hostname -I
    ;;
  2)
    # Display network interfaces
    echo "Network interfaces:"
    ip addr show
    ;;
  3)
    # Display established connections
    echo "Established connections:"
    ss -t state established
    ;;
  4)
    # Display open ports
    echo "Open ports:"
    ss -t state listening
    ;;
  5)
    # Display routing table
    echo "Routing table:"
    ip route show
    ;;
  6)
    # Display network statistics
    echo "Network statistics:"
    ss -s
    ;;
  7)
    # Display DNS settings
    echo "DNS settings:"
    cat /etc/resolv.conf
    ;;
  *)
    # Display an error message for an invalid choice
    echo "Invalid choice."
    ;;
esac
