#!/bin/bash

TRASH=~/TRASH
FILENAME="$1"
ARCHIVENAME="$FILENAME".gz
INODE=$(stat -c '%i' $FILENAME)

if [ -L $FILENAME ]
then
	unlink $FILENAME
	exit 0

find / -inum $INODE > hardlinkdelete

if [ $(cat hardlinkdelete | wc -l) -ge 2 ]
then 
	rm $FILENAME
	exit 0

mkdir -p $TRASH

find $TRASH -type f -mtime +2 -delete

gzip -c $1 > $TRASH/$ARCHIVENAME && rm $FILENAME || echo "error"



