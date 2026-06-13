#! /opt/homebrew/bin/bash

# Arguments can be passed to a script after its name
# They are passed as $n, where n is the position after the script name
# $0 indicates the current script name

echo "Filename is: $0"
echo "$1"


# $# holds the number of arguments passed to the script
# $@ holds a space-delimited string of all arguments passed to the script

echo "$#"
if [ $# -ge 1 ]; then
	echo "enough arguments passed!"
else
	echo "not enough arguments passed!"
fi
