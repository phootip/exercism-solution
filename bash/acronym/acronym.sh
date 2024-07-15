#!/usr/bin/env bash

main() {
	set -f
	(($# != 1)) && error "need if and only if 1 arg"
	output=""
	IFS=' -' read -ra ADDR <<<"$1"
	for w in ${ADDR[@]}; do
		for ((j = 0; j < ${#w}; j++)); do
			if [[ "${w:$j:1}" =~ [A-Za-z] ]]; then
				output="${output}${w:$j:1}"
				break
			fi
		done
	done

	echo ${output^^}
}

main "$@"
