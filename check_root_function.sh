#!/bin/bash

# This function checks if the current user ID equals zero.
check_if_root(){
# Defines a function named check_if_root

if [[ "${EUID}" -eq "0" ]]; then
# Checks if the effective user ID (EUID) is equal to 0 (root user)

 return 0
 # Returns 0, meaning "true" or success in Bash

else
# If the user is not root

 return 1
 # Returns 1, meaning "false" or failure in Bash

fi
# Ends the if statement inside the function

}
# Ends the function definition

if check_if_root; then
# Calls the function and checks its return value (0 = true)

 echo "User is root!"
 # Prints message if the user is root

else
# If the function returned a non-zero value (not root)

 echo "User is not root!"
 # Prints message if the user is not root

fi
# Ends the main if statement


#
useradd -m luixsunix
# Creates a new user named "luixsunix"
# The -m option creates a home directory for the user (e.g., /home/luixsunix)

#
su - luixsunix
# Switches to the user "luixsunix"
# The '-' ensures the full login environment is loaded (like a real login)