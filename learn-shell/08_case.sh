#! /opt/homebrew/bin/bash

# Case structure

case "$variable" in
	"$condition1")
		command...
	;;
	"$condition2")
                command...
        ;;
esac

mycase=1
case $mycase in
    1) echo "You selected bash";;
    2) echo "You selected perl";;
    3) echo "You selected python";;
    4) echo "You selected c++";;
    5) exit
esac
