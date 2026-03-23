#Mostrar clave privada
gpg --list-secret-keys --keyid-format=long
#Exportar llave privada
gpg --armor --export-secret-keys DFA1A9B4A5C355EE
#Listar todas mis llaves
gpg --list-keys
#Importar llave publica mi amigo
gpg --import MiCompa.asc
#Mensaje a mi compa
$ echo "Este mensaje es secreto" > doc_no_cifrado.txt
#Comprobar la creación
ls 
#Comprobar contenido
cat doc_no_cifrado.txt
#Encriptar 

