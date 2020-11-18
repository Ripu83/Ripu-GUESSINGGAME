#!/usr/bin/env bash
num_of_files=$(ls | wc -l)

function guess_num_of_files {
	read guess
	while [[ $guess -ne $num_of_files ]]
	do
		if [[ $guess -lt $num_of_files ]]
		then
			echo "Your guess is too low. Guess again: "
			read guess
		else
			echo "Your guess is too high. Guess again: "
			read guess
		fi
	done
	echo "That's Great... You finally guessed it."
	echo "This directory has $num_of_files files: "
	for f in $(ls)
	do
		echo " * $f "
	done
	echo " "
}
echo "Welcome to the guessing game!"
echo "Guess how many files are there in the current directory: "
guess_num_of_files
