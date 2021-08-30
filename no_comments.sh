#!/bin/bash

filename=$1
editedfile=$1.no_com

sed '/^[[:blank:]]*#/d/' $filename > $editedfile


