#!/bin/bash
#copy folder into target folder
cp -r $1 $2
#remove old folder
# -r remove dir
# -f dont promt, ignore not-existent
rm -rf $1
