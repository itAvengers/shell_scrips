#!/bin/bash

##############################################
#Purpos : Write a simple shell script where the user enters a pizza parlor bill total. 
#	  Your script should then display a 10 percent tip. 
#Version: 1.0
#Owner	: Aditya P <adityapatel081993@gmail.com>
#Input	: Pizza bill
#Output	: tip should be displayed
###############################################

clear
echo "**************************"
echo "**** Adi Pizza Parlor ****"
echo "**************************"
echo 
echo "Today is $(date)"
echo 
read -p "Enter a pizza parlor bill : " bill

# bc command is user for mathamatical calculation

tip=$(echo "scale=2; (${bill}*10) / 100" | bc -l)	# "bc -l" here -l Define the standard math library.
total=$(echo "scale=2; $tip + $bill" | bc -l)
echo "Pizza bill : $bill"
echo "Tip (10%)  : ${tip}"
echo "--------------------------"
echo "Total      : ${total}"
echo "--------------------------"
