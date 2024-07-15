#!/usr/bin/env bash

main() {
	if [ $# -ne 2 ]; then
		echo "Usage: hamming.sh <string1> <string2>"
		exit 1
	fi

	# n1="${#$1}"; n2=${#$2};
	n1="${#1}"
	n2="${#2}"
	if [ $n1 -ne $n2 ]; then
		echo "strands must be of equal length"
		exit 1
	fi

	output=0
	for ((i = 0; i < n1; i++)); do
		if [[ "${1:i:1}" != "${2:i:1}" ]]; then
			output=$((output + 1))
		fi
	done
	echo $output
}

main "$@"
