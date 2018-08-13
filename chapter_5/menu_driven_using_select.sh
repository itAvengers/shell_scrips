#!/bin/bash

##############################################
#Purpos : a menu driven script using the select statement to print calories for food items such as pizza, burger, Salad, Pasta etc
#Version: 1.0
#Owner	: Aditya P <adityapatel081993@gmail.com>
#Input	: choose the given option
#Output	: desired output
###############################################

# PS3 is reserved for the select loop
PS3="Please select your food choice : "

# using the select loop
select food in pizza burger salad pasta exit
do

	case $food in
	pizza)
		echo " You have selectd $food "
		echo " cost : Rs. 50"
		echo "---------------------------"
		;;

	
	burger)
		echo " You have selectd $food "
		echo " cost : Rs. 60"
		echo "---------------------------"
		;;

	salad)
		echo " You have selectd $food "
		echo " cost : Rs. 70"
		echo "---------------------------"
		;;

	pasta)
		echo " You have selectd $food "
		echo " cost : Rs. 80"
		echo "---------------------------"
		;;

	exit)
		echo " Thank You !! "
		echo " Visit Again"
		echo "---------------------------"
		exit
		;;
	*)
		echo " Error !! Please select option (1 - 5) : "
		;;
	esac

done
