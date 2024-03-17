README.md:
    echo "# Guessing Game" > README.md
    echo "## Project Title" >> README.md
    echo "Guess the number of files in the current directory." >> README.md
    echo "## Date and Time" >> README.md
    date >> README.md
    echo "## Lines of Code" >> README.md
    echo "The number of lines in guessinggame.sh: $(wc -l < guessinggame.sh)" >> README.md
