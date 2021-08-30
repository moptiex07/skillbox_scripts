#!/bin/bash 
today=$(date +'%d-%m')

if [ $today = 31-12 ]
then echo "happy new year!"
elif [ $today = 08-03 ]
then echo "happy international women's day!"
else echo "Today is $today"
fi

