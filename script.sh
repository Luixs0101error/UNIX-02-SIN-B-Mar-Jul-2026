#COMANDO
#OPCIONES
#ARGUMENTOS

ls [OPTIONS] [PATH]    # general syntax of the ls command
ls -a                  # short option: shows all files, including hidden ones
ls --all               # long option: equivalent to -a, shows all files
ls -a /                # shows all files (including hidden ones) in the root directory /

ls -l -a -h    # lists files in long format (-l), includes hidden files (-a), and shows sizes in human-readable format (-h)
ls -l -ah      # same as above, combined options (-l -a -h)
ls -lah        # same as above, all options combined in one
ls -l          # lists files in long format (permissions, owner, size, date)
ls -l -ah      # lists in long format, includes hidden files, and shows human-readable sizes

mkdir -- -rf    # creates a directory literally named "-rf" (the -- stops option parsing)
rmdir -- -rf    # removes the empty directory named "-rf"

ls --help    # shows a quick help message with available options for ls
man ls       # opens the manual page with detailed documentation for ls

--depth <depth>
           #Create a shallow clone with a history truncated to the specified number of commits. Implies --single-branch
           #unless --no-single-branch is given to fetch the histories near the tips of all branches. If you want to
           #clone submodules shallowly, also pass --shallow-submodules.

chmod +x script.sh              # gives execute permission to all users (user, group, others)
chmod u+x script.sh             # gives execute permission only to the owner (user)
chmod o-r script.sh             # removes read permission from others
chmod u+rw,go-rwx script.sh     # gives read and write to user; removes all permissions from group and others

sudo echo "hola"> /etc/archivo_protegido  #It doesn’t work in Codespaces because even if you use sudo, the redirection (>) is handled by the shell without elevated permissions, so it can’t write to protected system files.

echo "hola" | sudo tee /etc/archivo_protegido > /dev/null #Writes “hola” to a protected file using sudo tee, and > /dev/null hides the output so nothing is printed on screen.
echo "hola" | sudo tee /etc/archivo_protegido #Writes “hola” to /etc/archivo_protegido using sudo tee, allowing elevated permissions to create or overwrite the file.

sudo sh -c 'echo "chao" >> /etc/archivo_protegido' #Appends “chao” to /etc/archivo_protegido by running the whole command as root, so the redirection (>>) works with elevated permissions.

sudo su - Switches to the root user with a login shell, giving full administrative privileges.

echo "$HOME" #prints the value of the HOME variable (your home directory)
echo '$HOME' #prints the literal text $HOME (no variable expansion)


