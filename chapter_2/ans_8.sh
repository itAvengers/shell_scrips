#!/bin/bash

##############################################
#Purpos : Write a shell script that allows a user to enter any existing file name. 
#	  The program should then copy file to /tmp directory
#Version: 1.0
#Owner	: Aditya P <adityapatel081993@gmail.com>
#Input	: file name
#Output	: if file is present than copy it in /tmp dir
###############################################

# Take the file name as a input
read -p "Please enter the file name : " FILE_NAME

# check if file is present or not

if [ -f "${FILE_NAME}" ]; then
	cp -v "${FILE_NAME}" /tmp
else
	echo "$0: $FILE_NAME not found"
fi
