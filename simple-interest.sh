#!/bin/bash

# Function to calculate simple interest
calculate_simple_interest() {
  local principal=$1
  local rate=$2
  local time=$3

  # Formula for simple interest
  interest=$(echo "$principal * $rate * $time / 100" | bc)
  echo "The simple interest is: $interest"
}

# Input values
echo "Enter principal amount:"
read principal
echo "Enter rate of interest:"
read rate
echo "Enter time (in years):"
read time

calculate_simple_interest $principal $rate $time
