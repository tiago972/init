#! /bin/bash

read -p "user to be deleted: " USR

sudo pkill -9 -u $USR

sudo userdel $USR
