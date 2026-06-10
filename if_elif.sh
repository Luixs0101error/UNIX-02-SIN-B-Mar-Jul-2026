#!/bin/bash
# Specifies the interpreter to run the script (Bash shell)

USER_INPUT="${1}"
# Stores the first argument passed to the script in the variable USER_INPUT

❶ if [[ -z "${USER_INPUT}" ]]; then
# Checks if USER_INPUT is empty (no argument was provided)

 echo "You must provide an argument!"
 # Prints an error message if no argument is given

 exit 1
 # Exits the script with status code 1 (indicates an error)

fi
# Ends the first if statement

 if [[ -f "${USER_INPUT}" ]]; then
# Checks if USER_INPUT is a regular file

 echo "${USER_INPUT} is a file."
 # Prints that the input is a file

 elif [[ -d "${USER_INPUT}" ]]; then
# Else, checks if USER_INPUT is a directory

 echo "${USER_INPUT} is a directory."
 # Prints that the input is a directory

else
# If USER_INPUT is neither a file nor a directory

 echo "${USER_INPUT} is not a file or a directory."
# Prints that the input is not recognized as a file or directory

fi
# Ends the second if statement

