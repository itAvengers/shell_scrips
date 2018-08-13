#!/bin/bash

##############################################
#Purpos : Write a simple shell script where the user enters a pizza parlor bill total. 
#	  Your script should then display a 10 percent tip.
#Version: 1.0
#Owner	: Aditya P <adityapatel081993@gmail.com>
#Input	: bill amount
#Output	: tip of bill
###############################################

# clear the screen
clear

echo "****************************"
echo "***** Adi Pizza Parlor *****"
echo "****************************"
echo
echo "Today id $(date)"
echo
read -p "Enter the bill amount : " bill

tip=$(echo "scale=2; (${bill}*10) / 100" | bc -l) #bc command is used to enable the mathamatics functions
total=$(echo "scale=2; $tip + $bill" | bc -l)
echo "Pizza bill : $bill"
echo "Tip (10%)  : ${tip}"
echo "--------------------------"
echo "Total      : ${total}"
echo "--------------------------"
