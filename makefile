#!usr/bin/env bash
# File: makefile

all:
	echo 'GuessingGame' > README.md
	echo '<br />' >> README.md
	date >> README.md
	echo '<br />' >> README.md
	cat guessinggame.sh | wc -l >> README.md