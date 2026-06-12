#! /opt/homebrew/bin/bash

a=10
b=2

# Basic arithmetic operators
# Operations can be performed inside strings using $(())

echo "$a + $b = $((a + b))"
echo "$a - $b = $((a - b))"
echo "$a * $b = $((a * b))"
echo "$a / $b = $((a / b))"
echo "$a % $b = $((a % b))"
echo "$a ** $b = $((a ** b))"


# Example of more complex calculation
# TOTAL=$((1*${COST_PINEAPPLE} + 2*${COST_BANANA} + 3*${COST_WATERMELON} + ${COST_BASKET}))

