#!/bin/bash
SIGNAL_TO_STOP_FILE="stoploop"
# Defines a variable with the name of the file that will stop the loop

while [[ ! -f "${SIGNAL_TO_STOP_FILE}" ]]; do
# Starts a loop that continues while the file does NOT exist (-f checks if it is a file, ! negates it)

 echo "The file ${SIGNAL_TO_STOP_FILE} does not yet exist..."
 # Prints a message saying the file has not been created yet

 echo "Checking again in 2 seconds..."
 # Prints a message indicating the script will wait before checking again

 sleep 2
 # Pauses execution for 2 seconds before the next iteration

done
# Ends the while loop (it stops when the file exists)

echo "File was found! Exiting..."
# Prints a message when the file is finally detected and the loop ends
