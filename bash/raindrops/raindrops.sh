#!/usr/bin/env bash

main() {
	output=""
	if (($1 % 3 == 0)); then
		output="${output}Pling"
	fi
	if [[ $(($1 % 5)) -eq 0 ]]; then
		output="${output}Plang"
	fi
	if [[ $(($1 % 7)) -eq 0 ]]; then
		output="${output}Plong"
	fi

	if [[ -z $output ]]; then
		echo $1
	else
		echo $output
	fi
}

main "$@"
