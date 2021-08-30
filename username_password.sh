#!/bin/bash
read -p "Please enter your username: " username
if [ "$username" = "Anna" ]
then
	read -s -p "Enter your password: " password
	if [ "$password" = "123" ]
	then
		echo "Welcome, $username!"
	else
		echo "Invalid password!"
		exit 1
	fi
else
	echo "Invalid username!"
	exit 1
fi
