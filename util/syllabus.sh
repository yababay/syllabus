#!/bin/bash

. ../util/functions.sh

intro
hello

for l in `ls -1 *.js`
do 
    message "`cat $l | egrep '^(\/\*|\ \*)' | sed 's/\/\*//;s/\*\///;s/^\ \*//' | tr '\n' ' ' | sed 's/^ \+//;s/ \+/ /g;s/ \+$//'`"
    vim $l
done

goodbye
links
