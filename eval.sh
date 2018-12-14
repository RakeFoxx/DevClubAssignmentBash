#!/bin/bash
# @author: Rishabh Ranjan
# @date: 14-12-2018
# DevClub bash assignment 3

reg=0
res=0
for var in $( cat "$1" | sed 's/*/\\*/g' )
do
	# echo var = $var
	case "$var" in
	+ ) res=$(( $res + $reg ))
		;;
	- ) res=$(( $res - $reg ))
		;;
	\\* ) res=$(( $res * $reg ))
		;;
	/ ) res=$(( $res / $reg ))
		;;
	* ) reg=$var
		;;
	esac
done
echo $res
