id
#ES: Muestra la información del usuario actual (UID, GID y grupos).
# EN: Displays information about the current user (UID, GID, and groups).

cat /etc/passwd | head -10
# ES: Muestra las primeras 10 líneas del archivo /etc/passwd, que contiene las cuentas de usuario del sistema.
# EN: Shows the first 10 lines of the /etc/passwd file, which contains system user accounts.


groups
# ES: Muestra los grupos a los que pertenece el usuario actual.
# EN: Displays the groups the current user belongs to.

groups $USER
# ES: Muestra los grupos a los que pertenece el usuario especificado en la variable $USER.
# EN: Displays the groups that the user specified by the $USER variable belongs to.

id -u
# ES: Muestra el UID (User ID) del usuario actual.
# EN: Displays the UID (User ID) of the current user.

id -g
# ES: Muestra el GID (Group ID) del grupo principal del usuario actual.
# EN: Displays the GID (Group ID) of the current user's primary group.

id -G
# ES: Muestra todos los IDs de los grupos a los que pertenece el usuario actual.
# EN: Displays all group IDs that the current user belongs to.

cat /etc/group | grep codespace
# ES: Muestra la información del grupo llamado "codespace" desde el archivo /etc/group.
# EN: Shows information about the "codespace" group from the /etc/group file.

cat /etc/gshadow
# ES: Muestra el archivo /etc/gshadow, que contiene información sensible
#     sobre grupos, como contraseñas y administradores.
# EN: Displays the /etc/gshadow file, which contains sensitive group
#     information such as passwords and group administrators.

mkdir ~/proyecto_unix/
# ES: Crea el directorio "proyecto_unix" dentro del directorio personal del usuario.
# EN: Creates the "proyecto_unix" directory inside the user's home directory.

ls -la ~/proyecto_unix/
# ES: Lista el contenido del directorio "proyecto_unix" mostrando todos los archivos
#     (incluidos los ocultos) con información detallada.
# EN: Lists the contents of the "proyecto_unix" directory showing all files
#     (including hidden ones) with detailed information.

#groupadd[options]name_groups
#Create a simple group
#Cuando un identificador es menor a 1000 es un identificador de sistema
groupadd desarrolladores
#Specific GID
groupadd -g 2000 operaciones
#System group
groupadd --system servicios_web
#Verify creation
grep "desarrolladores\|operaciones\|servicios_web" /etc/group 
grep -E "desarrolladores|operaciones|servicios_web" /etc/group
#Main options
groupadd --help
#View the range of GIDs in the system
grep "GID_MIN\|GID_MAX\|SYS_GID" /etc/login.defs
#System groups have a GID lower than the minimum user
#In Ubuntu, typically
#SYS_GID_MIN=100
#SYS_GID_MAX=999
#GID_MIN=1000
#GID_MAX=60000

#Sistaxy Basic
#Create group
addgroup diseno
addgroup --gid 2100 marketing
addgroup --system cache_web
#Verify
grep "diseno\|marketing\|cache_web" /etc/group
#Verify and groups
groups
id
usermod -aG desarrolladores root
#add a user
adduser root marketing
#see current status
id root
#Create temporary group
groupadd grupo_temporal
usermod -aG grupo_temporal root
id root
#ERROR
usermod -G desarrolladores root
#Restore
usermod -aG diseno,marketing,grupo_temporal root
#prepare the practice scenario
mkdir -p ~/lab_chgrp/{proyectos,reportes,scripts}
touch ~/lab_chgrp/proyectos/app.py
touch ~/lab_chgrp/proyectos/config.json
touch ~/lab_chgrp/proyectos/informe.txt
touch ~/lab_chgrp/proyectos/deploy.sh
#VIEW INITIAL STATE
ls -la ~/lab_chgrp/proyectos/
ls -la ~/lab_chgrp/reportes/