#!/bin/bash

#Script used to create users, specifying username and group to add the user to.
#If group does not exist, it will be created.
#Author: Nick Miles

if [ $(getent group $1) ];
then
	#Group already exists, so add created user and add to group
	sudo useradd $1 -m -c "$1" -s /bin/bash -G $2
else
	#Group does not exist, so create it first then add user
	sudo groupadd $2
	sudo useradd $1 -m -c "$1" -s /bin/bash -G $2
fi




