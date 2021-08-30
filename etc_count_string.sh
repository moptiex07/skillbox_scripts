#!/bin/bash
  
dir="/etc/"

find "$dir" -maxdepth 1 -type f |
        while read filename
        do
                if [ -f "$filename" ]
                then
                        wc -l "$filename"
                fi
        done

