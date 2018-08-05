#!/bin/bash

##############################################
#Purpos : Write a shell script that allows a user to enter directory name.
#	  The program should then create directory name in /tmp directory.
#Version: 1.0
#Owner	: Aditya P <adityapatel081993@gmail.com>
#Input	: directory name
#Output	: create directory in the /tmp dir
###############################################

# Take the input from user
read -p "Please enter the directory name : " dir_name

# Check if directory is present or not 

if [ -d "/tmp/${dir_name}" ]; then
	echo "directory is already present"
else
	mkdir -p /tmp/${dir_name}
fi
