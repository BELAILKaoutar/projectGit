#!/usr/bin/env bash

# Function to get the number of files in the current directory
function get_file_count {
    local file_count=$(ls -l | grep "^-" | wc -l)
    echo "$file_count"
}

# Main function
function main {
    local correct_guess=false
    local file_count=$(get_file_count)

    while [ "$correct_guess" == false ]; do
        read -p "Guess how many files are in the current directory: " user_guess

        if [[ $user_guess -eq $file_count ]]; then
            echo "Congratulations! You guessed correctly."
            correct_guess=true
        elif [[ $user_guess -lt $file_count ]]; then
            echo "Your guess is too low. Try again."
        else
            echo "Your guess is too high. Try again."
        fi
    done
}

# Run the main function
main
