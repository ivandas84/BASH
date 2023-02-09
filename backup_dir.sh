#!/bin/bash

# Prompt the user to enter the path to the directory that needs to be backed up
echo "Enter the path to the directory that needs to be backed up: "
read dir_to_backup

# Construct the backup directory name using the base name of the directory to be backed up and the current date and time
backup_dir="${dir_to_backup##*/}_$(date +%F_%T)"

# Check if the directory to be backed up exists
if [ -d "$dir_to_backup" ]; then
  # Copy the directory to the current directory with the constructed backup directory name
  cp -r "$dir_to_backup" "./$backup_dir"
  
  # Print a success message indicating that the directory has been backed up
  echo "Directory $dir_to_backup has been backed up to $backup_dir"
else
  # Print an error message if the directory does not exist
  echo "Error: $dir_to_backup does not exist"
fi
