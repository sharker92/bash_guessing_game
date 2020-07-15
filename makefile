README.md:
	echo "# Bash Guessing file number game" > README.md
	echo "## Excercise of The Unix Workbench course from Coursera" >> README.md
	date >> README.md
	echo "Contains$(shell wc -l ./guessinggame.sh) lines of code" >> README.md
clean:
	rm README.md

