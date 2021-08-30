#!/bin/bash
  
dir="/usr"
find $dir -type f |
while read line
        do
        if [ -x "$line" ]
                then echo "$line"
                else
                continue
        fi
done
