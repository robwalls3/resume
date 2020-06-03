#!/bin/bash

source ./bash.env

git add --all
git commit -am "[GitFast Update] Message: $1"
git push -u $GITHUB_USER master
