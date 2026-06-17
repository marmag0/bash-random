#! /opt/homebrew/bin/bash

# Basic construction of a function in Bash

function adder() {
	echo "$(($1 + $2))"
}

function concater() {
	echo "${1}${2}"
}

adder 12 56
concater 12 56
