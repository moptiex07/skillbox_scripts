#!/bin/bash 
today=$(date +'%d-%m')

if [ $today = 31-12 ]
then echo "happy new year!"
else echo "Today is $today"
fi

