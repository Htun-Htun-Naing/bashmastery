#!/bin/bash

# Testing read command with user prompt
# -t for the time waiting 
# -s to hide the user input 

read -p "What is your first name? : " first
read -p "What is your surname/family name? : " last

PS3="What type of phone do u have? : "
select phone in headset handheld; do
	echo "You choose $phone"
	break
done 

PS3="Which department do u work in? : "
select department in finance sale engineering "customer service"; do
	echo "You choose $department"
	break
done


read -n 4 -p "What is your extension number? (must be 4 digit) : "  extension
echo
read -n 4 -p "What access code would you like to use when dialing in? (must be 4 digits) : " code

sudo echo "$first, $last, $extension, $code, $phone, $department" >> extensions.csv

