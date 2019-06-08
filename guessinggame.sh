#!/usr/bin/env bash

echo "Welcome to my guessing game "

        numberOfFiles=$(ls . | wc -l)
        function entry {
                echo "How many files are in the current directory:"
                read try
        }
        while [[ "$try" != "$numberOfFiles" ]]; do 
                        if [[ "$try" -gt "$numberOfFiles" ]]; then
                                echo "Try lower number "
                        fi
                        if [[ "$try" -lt "$numberOfFiles" ]]; then
                                echo "Try higher number "
                        fi
                        entry 
                done
        echo "You've entered $try , which is correct answer "

