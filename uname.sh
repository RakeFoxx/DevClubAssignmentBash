#!/bin/bash
# @author: Rishabh Ranjan
# @date: 14-12-2018
# DevClub bash assignment 2

if [[ $# != 2 ]]
then
	exit 1
fi

grep -w "$2" "$1" |
cut -d : -f 5

if [[ $? ]]
then
	exit 1
fi
