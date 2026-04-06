#Change directory to your home directory
cd
#Change directory to /home/codespace
cd /home/codespace
#Change directory to your home directory using the ~ shortcut
cd ~
#Change directory to your home directory using the $HOME environment variable
cd $HOME
#Create the directory "proyecto"
mkdir proyecto
#Change to directory "proyecto"
cd proyecto/
#List all files and directories
ls -lai
#Result of the list of the current directory and hark link
total 12
925551 drwxr-xr-x 2 codespace codespace 4096 Apr  6 12:34 .
918515 drwxr-x--- 1 codespace codespace 4096 Apr  6 12:34 ..
#Show detailed information about the current directory
stat .
#indicates the device ID where the file or directory is stored
#The first number (0) is the major device number.
#The second number (45) is the minor device number.
Device: 0,45
#Create directories /tmp/prueba/sub1 and /tmp/prueba/sub2
# -p creates parent directories if they do not exist
mkdir -p /tmp/prueba/sub1 /tmp/prueba/sub2
#Show detailed information about the /tmp/prueba directory
stat /tmp/prueba
#Open the manual page for the mkdir command 
#It shows the description, options, and usage examples
man mkdir
