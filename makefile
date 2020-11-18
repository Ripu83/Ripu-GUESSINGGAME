# README.md automatically generated when you run make.

all: README.md
	

README.md:
	echo "Title of the project: Guessing Game" > README.md
	echo "\nDate \`\`make\`\` was ran: " >> README.md
	date >> README.md
	echo "\nNumber of lines in file \`\`guessinggame.sh\`\` contains: " >> README.md
	wc -l guessinggame.sh | grep -o "^[0-9]*" >> README.md

clean:
	rm README.md
