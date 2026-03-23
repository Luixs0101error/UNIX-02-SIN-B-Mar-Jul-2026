#Mostrar clave privada
gpg --list-secret-keys --keyid-format=long
#Exportar llave privada
gpg --armor --export-secret-keys 