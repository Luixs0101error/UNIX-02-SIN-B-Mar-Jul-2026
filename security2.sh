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