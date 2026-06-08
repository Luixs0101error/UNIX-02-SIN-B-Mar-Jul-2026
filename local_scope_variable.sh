#!/bin/bash

# Global variable: accessible from anywhere in the script,
# including inside functions.
PUBLISHER="No Starch Press"

# Function definition: print_name
# This function demonstrates the use of a local variable.
print_name(){

  # Local variable: only exists within this function.
  # It helps prevent accidental modification of variables
  # outside the function and improves code maintainability.
  local name

  # Assign a value to the local variable.
  name="Black Hat Bash"

  # Access both the local variable (name)
  # and the global variable (PUBLISHER).
  echo "${name} by ${PUBLISHER}"
}

# Function call: executes the print_name function.
print_name

# The variable 'name' is not available here because it was
# declared as local inside the function scope.
echo "Variable ${name} will not be printed because it is a local variable."


