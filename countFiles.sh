#!/bin/bash
# @author: Rishabh Ranjan
# @date: 12-12-2018
# DevClub bash assignment 1

if [[ ! -d "$1" ]]
then
	exit 1;
fi

if [[ "$#" -eq 2 ]]
then
	ls "$1" |
	cut -d . -f 2 |
	xargs -n 1 -I r echo .r |
	grep -w "$2" |
	wc -w |
	xargs
else
	for name in $( ls "$1" )
	do
		if [[ -f "$1/$name" ]]
		then
			echo "$name"
		fi
	done |
	wc -w |
	xargs
fi

if [[ ! "$?" -eq 0 ]]
then
	exit 1
fi
