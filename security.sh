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

