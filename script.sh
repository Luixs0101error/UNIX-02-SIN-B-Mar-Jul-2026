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
