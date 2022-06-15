#!/bin/bash

for usuario in $(cat $1 | cut -d " " -f 1 | sort | uniq); do
	soma=0
	for dados in $(cat $1 | grep "$usuario" | cut -d " " -f 3); do
		soma=$((soma+dados))
	done
			echo "$usuario, $soma"
done
