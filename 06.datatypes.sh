#!/bin/bash
num1=10
num2=20
sum=$((num1 + num2))
echo "The sum of $num1 and $num2 is: $sum"

## Array example

fruits=("apple" "banana" "cherry")
echo "The fruits in the array are: ${fruits[@]}"
echo "The first fruit is: ${fruits[0]}" 
echo "The second fruit is: ${fruits[1]}"
echo "The third fruit is: ${fruits[2]}"