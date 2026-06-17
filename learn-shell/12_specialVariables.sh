#! /opt/homebrew/bin/bash

n=2

# Special Variables

echo "$0" 	# the filename of the current script
echo "$n"       # nth argument passed to the script
echo "$#"	# the number of arguments passed to the script
echo "$@"	# all arguments passed to the script or function
echo "$*"	# all arguments passed to the script or function
echo "$?"	# exit status of the last command
echo "$$"	# the PID of the current shell
echo "$!"	# the PID of the last background command
