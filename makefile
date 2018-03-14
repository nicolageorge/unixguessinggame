#!usr/bin/env bash
# File: makefile

all:
	echo 'GuessingGame' > README.md
	date >> README.md
	cat guessinggame.sh | wc -l >> README.md