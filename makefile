all: README.md

README.md:
        echo "Guessing game with number of files in current directory " > README.md
        echo "Date: $(date)" >> README.md
        lines=$(less guessinggame.sh | wc -l) >> README.md
        echo "guessinggame.sh has $lines lines"	>> README.md

