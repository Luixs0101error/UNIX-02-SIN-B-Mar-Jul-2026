#!/bin/bash
#!/bin/bash -x  DISPLAYS ALL COMMANDS IN REAL TIME


bash --version
env
echo ${SHELL}
echo ${RANDOM}
echo ${UID}
echo ${OSTYPE}
ps -e -f
ps -ef
df --human-readable
#bash -r blackhatbash1.sh # To run restricted mode
#bash -n blackhatbash1.sh # Displays syntaxs error
#bash -x blackhaybash1.sh # 