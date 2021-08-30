#!/bin/bash
num=1
while read line
do
echo "Line $num: $line"
num=$(( $num + 1 ))
done < textfile.txt 
