#!/bin/bash

##############################################
#Purpos : Write a shell script that allows a user to enter three file names. 
#	  The program should then copy all files to USB pen.
#Version: 1.0
#Owner	: Aditya P <adityapatel081993@gmail.com>
#Input	: file name
#Output	: file to be copied on Pen Drive
###############################################

# set path
PEN="/media/usb"

read -p "Enter three file names : " f1 f2 f3

cp -v "$f1" "$f2" "$f3" $PEN
