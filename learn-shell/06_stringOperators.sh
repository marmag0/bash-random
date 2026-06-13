#! /opt/homebrew/bin/bash

STRING1="this is a string"
SUBSTRING="t"

# String length
echo ${#STRING1}

# Indexes of substrings
expr index "$STRING1" "$SUBSTRING"

# Extracting a substring based on indexes
# If LEN is ommited, it gets substring from POS to end of line
POS=1
LEN=3
echo "${STRING:$POS:$LEN}"

# Substring replacement
STRING2="to be or not to be"
echo ${STRING[@]/be/eat}
