#!/bin/bash

# Ensure script is run as root
userid=$(id -u)
if [ "$userid" -ne 0 ]; then
    echo "This script must be run as root. Please run with sudo or as root user."
    exit 1
fi

logs_folder="/var/log/shell-scripts"
# Clean up log_file name by using basename of $0
logs_file="$logs_folder/$(basename "$0").log"

mkdir -p "$logs_folder"

validate(){
    if [ "$1" -eq 0 ]; then
        echo "$2 installation completed successfully." | tee -a "$logs_file"
    else
        echo "$2 installation failed. Please check the error messages above." | tee -a "$logs_file"
        exit 1
    fi
}

for package in "$@"
do
    # Check if package is already installed
    dnf list installed "$package" &>>"$logs_file"
    
    if [ $? -eq 0 ]; then
        echo "$package is already installed. Skipping..." | tee -a "$logs_file"
    else
        echo "$package is not installed. Installing..." | tee -a "$logs_file"
        
        # Corrected redirection: log output while also showing it on screen
        dnf install "$package" -y &>> "$logs_file"
        
        # Validate the actual exit code of dnf install
        validate $? "$package"
    fi
done

