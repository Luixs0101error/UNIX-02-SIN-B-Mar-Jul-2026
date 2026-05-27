#View the current primary group
id
gn # only the primary group name
#Create a file and see which group inherits
touch ~/test_inherited_group.txt
ls -la ~/test_inherited_group.txt
#The group is the user's primary group

#View the current primary group
echo "Grupo actual: $(id -gn)"
#Create a file before newgrp
touch ~/antes_de_newgrp.txt
ls -la ~/antes_de_newgrp.txt 

#Change to "developers" group
newgrp desarrolladores
#Verify that the active group changed
id -gn
echo "Nuevo grupo activo: $(id -gn)"

#Install newgrp
sudo apt install util-linux-extra
#Create to group
group add desarrolladores

#Create a file inside of the subshell
touch ~/dentro_de_newgrp.txt
ls -la ~/dentro_de_newgrp.txt

#The group now it is 'desarrolladores'
#Create a directory
mkdir -p ~/proyecto_dev/src
ls -la ~/

