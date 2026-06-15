#!/bin/bash
# Specifies that the script should be executed using the Bash shell.

for file in example_file*; do
# Loops through all files whose names start with "example_file".

    if [[ "${file}" == "example_file1" ]]; then
    # Checks if the current file is named "example_file1".

        echo "Skipping the first file"
        # Displays a message indicating that the first file will be skipped.

        continue
        # Skips the rest of the current loop iteration and moves to the next file.
    fi

    echo "${RANDOM}" > "${file}"
    # Writes a random number into the current file, replacing its previous contents.

done
# Marks the end of the loop.
