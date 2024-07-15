#!/bin/bash

read -p "Enter a number: " number

if (($number % 3 == 0)); then
	echo "Your number is divisible by 3."
else
	echo "Your number is not divisible by 3."
fi
