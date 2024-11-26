

#!/bin/bash

# List the contents of the home directory
echo "Listing contents of the home directory:"
ls ~
echo ""

# Change to /var/log and list its contents
echo "Changing directory to /var/log and listing its contents:"
 cd /var/log 
echo ""

# Find and display the path to the bash executable
echo "Finding the path to the bash executable:"
which bash
echo ""

# Find the current shell
echo "Finding the current shell:"
echo $SHELL
echo ""

# Create a directory named linux_fundamentals in your home directory
echo "Creating a directory named linux_fundamentals in the home directory..."
mkdir -p  ~/linux_fundamentals

# Navigate to linux_fundamentals and create a subdirectory named scripts
echo "Creating a subdirectory named scripts inside linux_fundamentals..."
cd ~/linux_fundamentals || exit
mkdir -p scripts

# Create an empty file named example.txt
echo "Creating an empty file named example.txt..."
touch example.txt

# Copy example.txt to the scripts directory
echo "Copying example.txt to the scripts directory..."
cp example.txt scripts/

# Create a directory named backup and move example.txt there
echo "Creating a backup directory and moving example.txt into it..."
mkdir -p backup
mv example.txt backup/

# Change permissions of example.txt to read/write for owner and read-only for others
echo "Changing permissions of example.txt in the backup directory..."
chmod 644 backup/example.txt

# Verify permissions of example.txt
echo "Verifying permissions of example.txt:"
ls -l backup/example.txt
echo ""


# Create a file named example.txt in the home directory
echo "Creating example.txt in the home directory..."
touch ~/example.txt

# Change the owner of example.txt to a user named student
echo "Changing the owner of example.txt to 'student'..."
sudo chown student ~/example.txt

# Change the group of example.txt to a group named students
echo "Changing the group of example.txt to 'students'..."
sudo chgrp students ~/example.txt

# Verify the changes
echo "Verifying the ownership and group of example.txt..."
ls -l ~/example.txt

# Create a directory named project in the home directory
echo "Creating 'project' directory in the home directory..."
mkdir -p ~/project

# Create a file named report.txt inside the project directory
echo "Creating 'report.txt' file inside the 'project' directory..."
touch ~/project/report.txt

# Set permissions for report.txt: read and write for the owner, read-only for group and others
echo "Setting permissions for 'report.txt'..."
chmod 644 ~/project/report.txt

# Set permissions for the project directory: rwx for the owner, rx for group and others
echo "Setting permissions for the 'project' directory..."
chmod 755 ~/project

# Verify the permissions of report.txt
echo "Verifying permissions of 'report.txt':"
ls -l ~/project/report.txt

# Verify the permissions of the project directory
echo "Verifying permissions of the 'project' directory:"
ls -ld ~/project

echo "Task completed successfully!"

