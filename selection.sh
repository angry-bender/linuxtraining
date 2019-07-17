#!/bin/bash
echo "This script will test if a number is 50 or not"
read -p "Enter a number: " INPUT
if [[ $((INPUT)) != $INPUT ]]; then
	echo "Not a number, exiting now"
	exit
fi


if [[ $INPUT == 50 ]]; then
	echo "The number is 50"
elif [[ $INPUT -lt 50 ]]; then
	echo "The number is less than 50"
else
	echo "The number is greater than 50"
fi
