#!/bin/bash
# Shebang: tells the system to execute this script using Bash

NAME="${1}"
# Assigns the first command-line argument to the variable NAME

DOMAIN="${2}"
# Assigns the second command-line argument to the variable DOMAIN

OUTPUT_FILE="results.csv"
# Defines the name of the file where results will be saved

# Check if the two expected arguments are set
if [[ -z "${NAME}" ]] || [[ -z "${DOMAIN}" ]]; then
  # If NAME or DOMAIN is empty (-z checks for empty string)

  echo "You must provide two arguments to this script."
  # Prints an error message to the user

  echo "Example: ${0} mysite nostarch.com"
  # Shows how to correctly use the script (${0} is the script name)

  exit 1
  # Exits the script with status 1 (indicates an error)
fi

# Write CSV header to the file
echo "status,name,domain,timestamp" > ${OUTPUT_FILE}
# Writes the header line into the output file (overwrites if it exists)

# Try to ping the domain one time and suppress output
if ping -c 1 "${DOMAIN}" &> /dev/null; then
  # If the ping command succeeds (exit status 0)

  echo "success,${NAME},${DOMAIN},$(date)" >> "${OUTPUT_FILE}"
  # Appends a success row with current date/time to the CSV file

else
  # If the ping command fails

  echo "failure,${NAME},${DOMAIN},$(date)" >> "${OUTPUT_FILE}"
  # Appends a failure row with current date/time to the CSV file
fi