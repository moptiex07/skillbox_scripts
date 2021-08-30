#!/bin/bash

if [ $# -ne 2 ]
then
	echo "2 arguments are needed, dir being moved and target dir"
	exit 1
fi

#check if dir exists
if [ ! -d "$1" ]
then
	echo "Error! $1 does not exist or not a dir"
	exit 1
fi

#check if target dir exists
if [ ! -d "$2" ]
then
        echo "Error! $2 does not exist or not a dir"
	exit 1
fi

#delete only if dir copied successfully
if cp -r "$1" "$2" && rm -rf "$1"
then
	echo "Dir $1 was successfully moved to $2"
	exit 0
else
	echo "Error! smth went wrong"
	exit 1
fi
