#View the current primary group
id
gn # only the primary group name
#Create a file and see which group inherits
touch ~/test_inherited_group.txt
ls -la ~/test_inherited_group.txt
#The group is the user's primary group