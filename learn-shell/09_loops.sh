#! /opt/homebrew/bin/bash

# For loop - iterates over entries inside a sequence like:
# -> arrays
# -> command outputs

names=( "Joe" "Mark" "Lincoln" "Izydor" )
for n in ${names[@]}; do
	echo "Hi ${n}. Nice to meet you!"
done
echo ""

echo "Displaying files in current user's home directory:"
i=0
for file in $(ls /Users/$USER); do
	i=$(( i+1 ))
	echo "File no. ${i}: ${file}"
done
echo ""


# While loop - executes as long as the specified condition is met

count=3
echo "I'm looking, you're hiding! I'm starting the countdown..."
while [ $count -ge 0 ]; do
	if [ $count -ne 0 ]; then
		echo "${count}..."
	else
		echo "${count}!"
	fi
	count=$(($count - 1))
done
echo "I found you!"
echo ""


# Until loop - works like a while loop, but it executes as long as the specified condition is not met
# Control statements: break - exits the loop; continue - skips to the next iteration

counter=0
while [ $counter -ge 0 ]; do
	echo "Value of counter is: $counter"
  	counter=$((counter+1))
  	if [ $counter -ge 5 ] ; then
		break
	fi
done
