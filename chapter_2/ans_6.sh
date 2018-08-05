#!/bin/bash

##############################################
#Purpos : Write a shell script that allows a user to enter his or her top three ice cream flavors. 
#	  Your script should then print out the name of all three flavors.
#Version: 1.0
#Owner	: Aditya P <adityapatel081993@gmail.com>
#Input	: top 3 icecream flavours
#Output	: name of entered icecream flavour
###############################################

# Take the input
read -p "Enter the 1st icecream flavour : " first_Icecream
read -p "Enter the 2st icecream flavour : " second_Icecream
read -p "Enter the 3st icecream flavour : " third_Icecream

echo -e "\nThanks ${USER}"
echo -e "Your first icecream flavour is : $first_Icecream"
echo -e "Your second icecream flavour is  : $second_Icecream"
echo -e "Your third icecream flavour is   : $third_Icecream"
