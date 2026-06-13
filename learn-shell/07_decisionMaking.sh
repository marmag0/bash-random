#! /opt/homebrew/bin/bash

# If clause should be ended with "fi"

name="marmag"
if [ $name = "John" ]; then
	echo "Hi John! Nice to meet you!"
elif [ $name = "marmag" ]; then
	echo "Hey ${name}, have you seen John?"
else
	echo "You're not the one I'm looking for!"
fi


# Numeric comparisons
#	comparison   	Evaluated to true when
#	$a -lt $b    	$a < $b
#	$a -gt $b    	$a > $b
#	$a -le $b    	$a <= $b
#	$a -ge $b    	$a >= $b
#	$a -eq $b    	$a is equal to $b
#	$a -ne $b    	$a is not equal to $b 

# String comparisons
#	comparison    	Evaluated to true when
#	"$a" = "$b"     $a is the same as $b
#	"$a" == "$b"    $a is the same as $b
#	"$a" != "$b"    $a is different from $b
#	-z "$a"         $a is empty

# Logical combinations - can be used inside double square brackets [[]]
# && - and
# || - or
