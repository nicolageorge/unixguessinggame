#!usr/bin/env bash
# File: guessinggame.sh

fileno=0
FILESNUMBER="$(ls | wc -l)"
echo $FILESNUMBER
while [ "$fileno" -ne "$FILESNUMBER" ]
do
	read -p "How many files are in the current directory?" fileno

	re='^[0-9]+$'
	if ! [[ $fileno =~ $re ]] ; 
	then
	   echo "error: Not a number"
	   fileno=0
	else
		if [ "$fileno" -gt "$FILESNUMBER" ]
		then
			echo "LOWER"
		fi

		if [ "$fileno" -lt "$FILESNUMBER" ]
		then
			echo "HIGHER"
		fi
	fi
done

echo "You are right"
