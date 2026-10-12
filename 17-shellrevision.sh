#!/bin/bash
echo "Please enter the  name:"
read name1
echo "Please enter the password:"
read -s name2

working_directory=$(pwd)
time_logged_in=$(who | grep $name1 | awk '{print $3, $4}')
echo "user is working in the directory: $working_directory"
echo "user have logged in as: $name1"
ehco "user have logged in at: $time_logged_in"
