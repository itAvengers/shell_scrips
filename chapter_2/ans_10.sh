#!/bin/bash

##############################################
#Purpos : Write a shell script that allows a user to enter three file names. 
#	  The program should then copy all files to USB pen.
#Version: 2.0
#Owner	: Aditya P <adityapatel081993@gmail.com>
#Input	: file name
#Output	: file to be copied on Pen Drive
###############################################

# set path
PEN="/media/usb"

read -p "Enter three file names : " f1 f2 f3

# Make sure pendrive exist else die
[ ! -d "$PEN" ] && { echo "$0: USB Pendrive not found at ${PEN}"; exit 1; }

# Make sure pendrive is mounted else die

if grep -wq "$PEN" /etc/mtab
then
	# Make copy only if file exist else die
	[ -f "$f1" ] && cp -v "$f1" $PEN || echo "$0: $f1 not found."
	[ -f "$f2" ] && cp -v "$f2" $PEN || echo "$0: $f2 not found."
	[ -f "$f3" ] && cp -v "$f3" $PEN || echo "$0: $f3 not found."
else
	echo "$0: USB Pen is not mounted at $PEN."
fi
