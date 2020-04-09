#!/usr/bin/env bash

#Set the correct answer based on the contents of the current directory
answer="$(ls -p | grep -v / | wc -l)"

#prompt user for a guess
echo "Can you guess how many files (not counting diretories) are in this directory?"
read guess

#the loop to check if the guess is correct or not. 
while [[ $guess != $answer ]]
do
	if [[ $guess -lt $answer ]]
	then echo "That was too low. Please try again."
		read guess
	elif [[ $guess -gt $answer ]]
	then echo "That was too high. Please try again."
		read guess
	fi	
done

#congratulate the user on the correct guess.
echo "Good job!"
