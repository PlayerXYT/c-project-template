#!/bin/bash

if [[ -z $1 ]]; then
	echo "Usage: setup.sh [project name]"
	exit 1
fi

# Remove extra files
rm -rf .git
rm README.md
rm $(find -name ".gitkeep")

# Create a new repo
git init
git branch -m master

# Edit project name
sed -i "s/my_program/$1/" makefile

# Clean up
rm setup.sh
