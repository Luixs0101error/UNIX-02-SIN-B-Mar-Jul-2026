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
