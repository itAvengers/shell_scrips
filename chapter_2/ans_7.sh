#!/bin/bash

##############################################
#Purpos : Write a shell script that allows a user to enter any Internet domain name (host name such as www.cyberciti.biz).
#	  Your script should than print out the IP address of the Internet domain name.
#Version: 1.0
#Owner	: Aditya P <adityapatel081993@gmail.com>
#Input	: domain name
#Output	: domain ip address
###############################################

# read the domain name 

read -p "Enter the domain name : " DOMAIN_NAME

host -4 $DOMAIN_NAME
# Filtering only IP address
echo
echo "Filtering only IP address"
host -4 $DOMAIN_NAME | grep 'has address' |awk '{print $4}'
