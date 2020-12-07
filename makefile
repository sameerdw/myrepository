README.md: guessinggame.sh
	echo "# Peer-graded Assignment:" > README.md
	date >> README.md
	wc -l guessinggame.sh >> README.md
	echo "" >> README.md
	echo "Number of lines in guessinggame.sh:" >> README.md
	wc -l < guessinggame.sh >> README.md
