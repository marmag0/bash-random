#! /opt/homebrew/bin/bash

# Often before running a program, there is a need for identifying the environment
# Way 1: -<command> [filename]
# Way 2: [filename1] -<command> [filename2]

# Checking for existence (-e)

filename="sth.md"
if [ -e filename ]; then
	echo "${filename} exists!"
else
	echo "${filename} does not exist!"
fi


# Testing if file is a directory (-d)
# Testing if file is a file (-f)

is_dir="12_specialVariables.sh"
if [ -d is_dir ]; then
	echo "${is_dir} is a directory"
elif [ -f is_dir ]; then
	echo "${is_dir} is a file"
else
	echo "${is_dir} does not exist or it's a different type of file"
fi


# Testing permissions
# -r = read
# -w = write
# -x = execute
