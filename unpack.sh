#!/bin/bash

if dpkg -l unzip &> /dev/null
then
	echo "everything is all right!"
else
	echo "please install unzip"
	exit 1
fi

case $1 in
	*.bz) bunzip2 $1 ;;
	*.gz) gunzip $1 ;;
	*.zip) unzip $1 ;;
	*.lzma) unlzma $1 ;;
	*) echo "error"
esac

