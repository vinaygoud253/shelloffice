#!/bin/bash

for i in {1..5}
do
  echo "Iteration $i"
done

userid=$(id -u)

logs_folder="/var/log/shell-scripts"
logs_file="$logs_folder/$0.log"

if [ "$userid" -ne 0 ]; then
    echo "This script must be run as root. Please run with sudo or as root user."
    exit 1
fi

mkdir -p "$logs_folder"

validate(){
    if [ $1 -eq 0 ]; then
        echo "$2 installation completed successfully." | tee -a "$logs_file"
    else
        echo "$2 installation failed. Please check the error messages above." | tee -a "$logs_file"
        exit 1
    fi
}

for packages in $@
do
    dnf list installed "$packages" &>>"$logs_file"
    if [ $? -eq 0 ]; then
        echo "$packages is already installed." | tee -a "$logs_file"
    else
        echo "$packages is not installed. Installing..." | tee -a "$logs_file"
    fi
    dnf install "$packages" -y &>>"$logs_file" | tee -a "$logs_file"
    validate $? "$packages installation"
done

