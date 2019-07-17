#!/bin/bash
#Stores Command Line Args
USERN=$1

#Adds Username and sets a password
useradd -s /bin/bash ${USERN}
echo "user ${USERN} added successfully!"
echo ${USERN}:"Password1" | chpasswd
echo "Password for user ${USERN} changed successfully"

# Creates the users home directories
cd /home/
mkdir ${USERN}
chown ${USERN}:${USERN} ${USERN}
mkdir ${USERN}/{Documents,Music,Videos,Downloads}
