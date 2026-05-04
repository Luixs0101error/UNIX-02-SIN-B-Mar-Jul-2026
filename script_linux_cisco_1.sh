ls
# EN: Lists files and folders in the current directory
# ES: Lista los archivos y carpetas del directorio actual

LS
# EN: Incorrect command, Linux is case-sensitive
# ES: Comando incorrecto, Linux distingue entre mayúsculas y minúsculas

ls Documents
# EN: Lists the contents of the Documents directory
# ES: Lista el contenido del directorio Documents

ls -l
# EN: Displays files in long listing format
# ES: Muestra los archivos en formato de listado largo

ls -r
# EN: Lists files in reverse alphabetical order
# ES: Muestra los archivos en orden alfabético inverso

ls -lr
# EN: Long listing in reverse order (combined options)
# ES: Listado largo en orden inverso (opciones combinadas)

aptitude moo
# EN: Runs an Easter Egg message from aptitude
# ES: Ejecuta un mensaje oculto (Easter Egg) de aptitude

aptitude -v moo
# EN: Runs the command with verbose output
# ES: Ejecuta el comando en modo detallado (verbose)

aptitude -vv moo
# EN: Increases the verbosity level
# ES: Aumenta el nivel de detalle del mensaje

aptitude -vvv moo
# EN: Shows a different response with higher verbosity
# ES: Muestra una respuesta diferente con mayor verbosidad

pwd
# EN: Prints the current working directory
# ES: Imprime el directorio de trabajo actual

cd Documents
# EN: Changes the current directory to Documents using a relative path
# ES: Cambia el directorio actual a Documents usando una ruta relativa

cd /
# EN: Changes the current directory to the root directory
# ES: Cambia el directorio actual al directorio raíz

cd ~
# EN: Returns to the user's home directory
# ES: Regresa al directorio de inicio del usuario

cd /home/sysadmin
# EN: Changes to the user's home directory using an absolute path
# ES: Cambia al directorio del usuario usando una ruta absoluta

cd School/Art
# EN: Changes directory following a relative path with subdirectories
# ES: Cambia de directorio siguiendo una ruta relativa con subdirectorios

cd ..
# EN: Moves to the parent directory
# ES: Se mueve al directorio padre

ls
# EN: Lists files and directories in the current directory
# ES: Lista archivos y directorios en el directorio actual

ls -l
# EN: Displays a long listing with detailed file information
# ES: Muestra un listado largo con información detallada de los archivos

ls -l /var/log
# EN: Displays a long listing of files in /var/log
# ES: Muestra un listado largo de los archivos en /var/log

ls -lt /var/log
# EN: Lists files ordered by modification time
# ES: Lista los archivos ordenados por fecha de modificación

ls -lS /var/log
# EN: Lists files ordered by file size
# ES: Lista los archivos ordenados por tamaño

ls -lSr /var/log
# EN: Lists files ordered by size in reverse order
# ES: Lista los archivos por tamaño en orden inverso

ls -r /var/log
# EN: Lists files in reverse alphabetical order
# ES: Lista los archivos en orden alfabético inverso

su -
# EN: Switches to the root user and starts a login shell
# ES: Cambia al usuario root e inicia una sesión de inicio

exit
# EN: Exits the current shell or user session
# ES: Sale de la sesión o usuario actual

sl
# EN: Tries to run the sl command without administrative privileges
# ES: Intenta ejecutar el comando sl sin privilegios administrativos

sudo sl
# EN: Runs the sl command with administrative privileges
# ES: Ejecuta el comando sl con privilegios administrativos

pwd
# EN: Prints the current working directory
# ES: Muestra el directorio de trabajo actual

cd Documents
# EN: Changes to the Documents directory using a relative path
# ES: Cambia al directorio Documents usando una ruta relativa

cd ~/Documents
# EN: Changes to the Documents directory using the home path
# ES: Cambia al directorio Documents usando la ruta del directorio personal

ls
# EN: Lists files and directories in the current directory
# ES: Lista archivos y directorios del directorio actual

ls -l
# EN: Displays files with detailed information (permissions, owner, size)
# ES: Muestra archivos con información detallada (permisos, propietario, tamaño)

ls -l hello.sh
# EN: Displays detailed information about the file hello.sh
# ES: Muestra información detallada del archivo hello.sh

./hello.sh
# EN: Attempts to execute a script without execute permission
# ES: Intenta ejecutar un script sin permiso de ejecución

chmod u+x hello.sh
# EN: Adds execute permission to the file owner
# ES: Agrega permiso de ejecución al propietario del archivo

sudo chown root hello.sh
# EN: Changes the owner of hello.sh to root
# ES: Cambia el propietario del archivo hello.sh a root

sudo ./hello.sh
# EN: Executes the script with administrative privileges
# ES: Ejecuta el script con privilegios administrativos

cat animals.txt
# EN: Displays the entire contents of the file animals.txt
# ES: Muestra todo el contenido del archivo animals.txt

cat alpha.txt
# EN: Displays all lines of the file alpha.txt
# ES: Muestra todas las líneas del archivo alpha.txt

head alpha.txt
# EN: Shows the first lines of the file alpha.txt
# ES: Muestra las primeras líneas del archivo alpha.txt

tail alpha.txt
# EN: Shows the last lines of the file alpha.txt
# ES: Muestra las últimas líneas del archivo alpha.txt

head -n 5 alpha.txt
# EN: Shows the first 5 lines of the file alpha.txt
# ES: Muestra las primeras 5 líneas del archivo alpha.txt

tail -n 5 alpha.txt
# EN: Shows the last 5 lines of the file alpha.txt
# ES: Muestra las últimas 5 líneas del archivo alpha.txt

cp /etc/passwd .
# EN: Copies the passwd file to the current directory
# ES: Copia el archivo passwd al directorio actual

dd if=/dev/zero of=/tmp/swapex bs=1M count=50
# EN: Creates a 50MB file filled with zeros
# ES: Crea un archivo de 50MB lleno de ceros

https://portal.netdevgroup.com/learn/a297720f-e875-4ce4-81b6-a2288c49eb9d/C5JcVstK91
