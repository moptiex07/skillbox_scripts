#!/bin/bash
i=0
while [ $i -lt 10 ]
do
echo "Hello world!"
i=$(expr $i + 1 )
done
