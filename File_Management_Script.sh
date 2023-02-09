#!/bin/bash

# File Management Script
# Author: Ivan Das 
# Created: 09 February, 2023

echo "Welcome to the File Management Script"
echo "Please choose an option:"
echo "1. List current directory"
echo "2. List current directory + permissions + hidden files_dirs"
echo "3. Make a new directory"
echo "4. Copy and Rename a directory"
echo "5. Move and Rename a directory"
echo "6. Delete a directory"
echo "7. Copy and Rename a file"
echo "8. Move and Rename a file"
echo "9. Delete a file"
echo "10. Quit"

read -p "Enter your choice: " choice

# List current directory
list_current_directory () {
  echo "Contents of $(pwd):"
  ls
}

# List current directory +  file/directory permissions + show hidden files/folders
list_current_dir_permissions_hidden_dirs_files () {
  echo "Contents of $(pwd) in details:"
  ls -la
}

# Make a new directory
make_new_directory () {
  read -p "Enter the name of the new directory: " dirname
  mkdir "$dirname"
  echo "Directory $dirname has been created."
}

# Copy and Rename a directory
copy_rename_directory () {
  read -p "Enter the name of the directory to move (including full path): " dirname
  read -p "Enter the new name for the directory (mention the path too): " newname
  cp -r "$dirname" "$newname"
  echo "Directory $dirname has been moved and renamed to $newname."
}

# Move and Rename a directory
move_rename_directory () {
  read -p "Enter the name of the directory to move (including full path): " dirname
  read -p "Enter the new name for the directory (mention the path too): " newname
  mv "$dirname" "$newname"
  echo "Directory $dirname has been moved and renamed to $newname."
}

# Delete a directory
delete_directory () {
  read -p "Enter the name of the directory to delete: " dirname
  rm -r "$dirname"
  echo "Directory $dirname has been deleted."
}

# Copy and Rename a file
copy_rename_file () {
  read -p "Enter the name of the file to copy: " filename
  read -p "Enter the new name for the copied file: " newname
  cp "$filename" "$newname"
  echo "File $filename has been copied to $newname."
}

# Move and Rename a file
move_rename_file () {
  read -p "Enter the name of the file to move: " filename
  read -p "Enter the new name for the moved file: " newname
  mv "$filename" "$newname"
  echo "File $filename has been moved to $newname."
}


# Delete a file
delete_file () {
  read -p "Enter the name of the file to delete: " filename
  rm "$filename"
  echo "Filename $filename has been deleted."
}

# Quit
quit () {
  echo "Exiting the File Management Script."
  exit 0
}

# Based on the user's choice, perform the corresponding action
case $choice in
  1) list_current_directory ;;
  2) list_current_dir_permissions_hidden_dirs_files ;;
  3) make_new_directory ;;
  4) copy_rename_directory ;;
  5) move_rename_directory ;;
  6) delete_directory ;;
  7) copy_rename_file ;;
  8) move_rename_file ;;
  9) delete_file ;;
  10) quit ;;
  *) echo "Invalid choice. Please try again."
esac
