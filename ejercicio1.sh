# Creates a script file and writes the shebang line
echo '#!/bin/sh' > hola.sh

# Appends a command to the script
echo 'echo "Hola desde mi primer script"' >> hola.sh

# Displays the content of the script
cat hola.sh

# Adds execute permission to the script (important step)
chmod +x hola.sh

# Executes the script
./hola.sh



# Show detailed information about the file (permissions, owner, size, etc.)
ls -l hola.sh

# Add execute permission to the file so it can run as a script
chmod +x hola.sh

# Show the file information again to verify the permission change
ls -l hola.sh

# Execute the script from the current directory
./hola.sh


# Lists files and directories inside /etc
ls /etc
# Creates a file inside /etc (requires sudo)
touch /etc/prueba.txt
# Creates a directory in the home directory 
mkdir ~/mi_carpeta
# Installs a package (requires sudo)
apt install cowsay



