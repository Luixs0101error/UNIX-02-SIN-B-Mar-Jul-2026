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
bash -r blackhatbash1.sh # -r To run restricted mode