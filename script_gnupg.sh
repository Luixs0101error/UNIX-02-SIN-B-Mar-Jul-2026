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
gpg --output doc_cifrado.txt --encrypt --recipient jeanellaparedes@gmail.com doc_no_ cifrado.txt
#Descifrar
gpg --decrypt doc_jeanella.txt
#Firmar archivo
gpg --output doc_no_cifrado_firmado.txt --clearsign doc_no_cifrado.txt
#Verificar firma
gpg --verify doc_no_cifrado_firmado.txt 
#Firma separada
gpg output firma_separada_doc_no_cifrado.sig doc_no_cifrado.txt
#Verificar firma de mi compañero
gpg --verify doc_no_cifrado_firmado_jeanellafirmado.txt
#Web of trust to our partner
gpg --edit-key 7ABA372FA1S26A7CBFCD64DC73B2DD130907A2F2E
#ign the key of our decision
gpg --sign-key 3B2DD130907A2F2E