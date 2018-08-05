#!/bin/bash

##############################################
#Purpos : create the calculator
#Version: 1.0
#Owner	: Aditya P <adityapatel081993@gmail.com>
#Input	: input the no and the operand
#Output	: display the result
###############################################

# Example
# Enter two values : 10 20
# Enter operand ( +, -, /, *) : +
# Output: 10 + 20 = 30

# take the input
read -p "Enter the two numbers : " no1 no2

read -p "Enter operand ( +, -, *, / ) : " op

ans=$(( $no1 $op $no2 ))

echo "$no1 $op $no2 = $ans"
