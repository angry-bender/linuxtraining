#!/bin/bash
for USER in $( cat users.txt ); do
    userdel $USER
    echo "user $USER added successfully!"
done
