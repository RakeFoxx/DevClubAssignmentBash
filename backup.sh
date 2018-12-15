#!/bin/bash
# @author: Rishabh Ranjan
# @date: 14-12-2018
# DevClub bash assignment 4

function _rls
{
	for f in $( ls "$1/$2" )
	do
		if [[ -d "$1/$2/$f" ]]
		then
			_rls "$1" "$2/$f"
		else
			echo "$2/$f"
		fi
	done
}

function rls
{
	for f in $( ls "$1" )
	do
		if [[ -d "$1/$f" ]]
		then
			_rls "$1" "$f"
		else
			echo "$f"
		fi
	done
}

echo Files copied from $1 to $2 are:
rls "$1" |
while read p
do
	if [[ ! -f "$2/$p" ]]
	then
		echo $p
		cp "$1/$p" "$2/$p"
	fi
done

echo Files copied from $2 to $1 are:
rls "$2" |
while read p
do
	if [[ ! -f "$1/$p" ]]
	then
		echo $p
		cp "$2/$p" "$1/$p"
	fi
done
