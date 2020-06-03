#!/bin/bash

source ./bash.env

message=""

if [ "$1" != "" ]; then
	message=$1
else
	message="No update reason provided"
fi

git add --all

var=$(date)

git commit -am "[GitFast Update] $var: $message"
git push -u $GITHUB_USER master
