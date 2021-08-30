#!/bin/bash

#check 2 arguments
if [ $# -ne 2 ]
then
	echo "2 arguments needed, first name and name after renaming"
	exit 1
fi

#check if file exist
if [ ! -e "$1" ]
then 
	echo "Error! $1 does not exist"
	exit 1
fi

if mv "$1" "$2"
then
	echo "File $1 was successfully renamed to $2"
	exit 0
fi
