#!/bin/bash

TRASH=~/TRASH
FILENAME="$1"
ARCHIVENAME="$FILENAME".gz

mkdir -p $TRASH

find $TRASH -type f -mtime +2 -delete

gzip -c $1 > $TRASH/$ARCHIVENAME && rm $FILENAME || echo "error"



