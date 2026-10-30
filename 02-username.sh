#!/bin/bash
# This script demonstrates the use of variables in bash
# It takes two names and two numbers as input arguments
# echo "please enter your name:"
# read person1
# echo "please enter your password:"
# read -s password

# echo "Your name is $person1." and "Your password is $password."

start_time_stamp=$(date +%Y-%m-%d_%H-%M-%S)
echo "Start time: $start_time_stamp"
# sleep 10
# end_time_stamp=$(date +%Y-%m-%d_%H-%M-%S)
# total_time=$(( $(date -d "$end_time_stamp" +%s) - $(date -d "$start_time_stamp" +%s) ))
# echo "Total time taken: $total_time seconds."