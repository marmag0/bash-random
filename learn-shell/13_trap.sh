#! /opt/homebrew/bin/bash

# "trap" allows for catching specific signals to prevent unpredictable behavior
# "trap" is often used to clean up temporary files after a process is interrupted
# trap <arg/function> <signal>

function booh() {
	echo "Booh!"
}

trap booh SIGINT SIGTERM

echo "it's going to run until you hit Ctrl+Z"
echo "hit Ctrl+C to be blown away!"

while true        
do
    sleep 60       
done
