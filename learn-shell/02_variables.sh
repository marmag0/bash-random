#! /opt/homebrew/bin/bash

# Variables are created by assigning a value to them
# They can store: characters, strings, and numbers (int and float)

firstLetters="ABC"
myAge=20
wtf_is_that="-> ^ ^ <-"


# Variables can be referenced using "$variable_name"
# For visibility and clean syntax, use encapsulation "${variable_name}"
# Escape characters "\" are used to escape special characters

apple_price=6
echo "The price for apples is $apple_price per \$kilo\$"
echo "${wtf_is_that}"


# Variables can store command outputs - substitution
# `` (backticks) - for storing functions
# '' (single quotes) - for storing content which is a literal string
# "" (double quotes) - for storing content which is evaluated at the time of assignment

list=`ls -la`
state1="Current file system state: ${list}"
state2='Current file system state: ${list}'
echo "${state1}"
touch sth.txt
echo "New file created!"
echo "${state1}"
echo "${state2}"
rm sth.txt


# Exercise

BIRTHDATE="Jan 1, 2000"
Presents=10
BIRTHDAY=`date -d "${BIRTHDATE}" +%A`
