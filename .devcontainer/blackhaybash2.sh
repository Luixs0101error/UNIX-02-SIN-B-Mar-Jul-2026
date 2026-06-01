#!/bin/bash
set -x
# All this script does is create a directory, create a file
# within the directory, and then list the contents of the directory.
mkdir mydirectory
touch mydirectory/myfile
ls -l mydirectory

set +x

# Check the script for syntax errors without executing it
# bash -n blackhatbash2.sh

# Run the script in debug mode and display each command before execution
# bash -x blackhatbash2.sh

# Similar to using "set -x" inside the script to enable command tracing
# bash -x blackhatbash2.sh (set)

