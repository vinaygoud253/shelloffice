#!/bin/bash

userid=$(id -u)
if [ "$userid" -ne 0 ]; then
    echo "This script must be run as root. Please run with sudo or as root user."
    exit 1
fi

echo "Installing Nginx web server..."
dnf install nginx -y

if [ $? -eq 0 ]; then
    echo "Nginx installation completed successfully."
else
    echo "Nginx installation failed. Please check the error messages above."
    exit 1
fi

dnf install mysql -y

if [ $? -eq 0 ]; then
    echo "MySQL installation completed successfully."
else
    echo "MySQL installation failed. Please check the error messages above."
    exit 1
fi

dnf install nodejs -y

if [ $? -eq 0 ]; then
    echo "Node.js installation completed successfully."
else
    echo "Node.js installation failed. Please check the error messages above."
    exit 1
fi