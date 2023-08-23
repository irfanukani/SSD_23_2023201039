#!/bin/bash
read testcases
read all

inputArray=($all)
count=1

for i in "${inputArray[@]}"; do
	if [ $count -gt $testcases ]; then
		break
	fi
	if [ $((i % 2)) -eq 1 ]; then
		# print pattern 1 3 5 3 1
		printableLines=1
		for ((j = 0; j < ${i}; j++)); do
			spaces=$((($i - $printableLines) / 2))
			for ((k = 0; k < ${spaces}; k++)); do
				printf " "
			done
			for ((k = 0; k < ${printableLines}; k++)); do
				printf "*"
			done
			for ((k = 0; k < ${spaces}; k++)); do
				printf " "
			done
			if [ $j -lt $((i / 2)) ]; then
				printableLines=$(($printableLines + 2))
			else
				printableLines=$(($printableLines - 2))
			fi
			printf "\n"
		done
	fi
	count=$(($count + 1))
done
