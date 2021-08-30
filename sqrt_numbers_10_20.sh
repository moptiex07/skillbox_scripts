#!/bin/bash
  
for ((i=10;i<=20;i++))
do
        echo $i ^ 2 | bc
done
