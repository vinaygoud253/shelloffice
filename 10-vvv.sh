#!/bin/bash
echo "Please enter your name:"
read name1
echo "Please enter your friend name:" 
read name2
echo "welcome $name1 and $name2 to the devops shell scripting"
echo "please enter the password:"
read -s password
if([ -z "$password" ]); then
  echo "Password cannot be empty. Please enter a valid password."
  exit 1
fi
echo "your password is $password"