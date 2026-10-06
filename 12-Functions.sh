#!/bin/bash

# Function to display usage information

adding_numbers() {
  echo "Usage: $0 num1 num2"
  echo "Adds two numbers and displays the result."
  num1=$1
  num2=$2
  sum=$((num1 + num2))
  echo "The sum of $num1 and $num2 is: $sum"
}

adding_numbers