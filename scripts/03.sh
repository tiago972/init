#! /bin/bash

read -p "name of new user: " USR

sudo useradd $USR;
sudo passwd $USR;
read -p "Do you want to add this user to an existing groupe ? " ANS;
if [ "$ANS" = "1" ]
    then
	read -p "group to be joined: " GRP;
	sudo usermod -a -G $GRP $USR;
fi;
