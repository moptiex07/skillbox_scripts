#!/bin/bash
read -p "enter first value: " x
read -p "enter second value: " y
read -p "enter action symbol: " operator

case $operator in
"+") echo $(expr "$x" + "$y");;
"*") echo $(expr "$x" \* "$y");;
"-") echo $(expr "$x" - "$y");;
"/") if [ "$y" -eq 0 ]; then echo "error! no divison on 0!"; else echo $(expr "$x" / "$y"); fi;;
"**") let q=x**y; echo $q;;
"sqrt") echo $(echo sqrt "($x)" | bc -l);;
*) echo "unknown operation"
esac

