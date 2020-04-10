all: README.md

README.md: guessinggame.sh
	echo "This is the Week 4 project for The Unix Workbench." > README.md	
	echo "The makefile was run at: " >> README.md
	date >> README.md	
	echo "The script contains following number of lines: " >> README.md
	wc -l < guessinggame.sh >> README.md

clean:
	rm README.md
