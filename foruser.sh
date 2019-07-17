#!/usr/bin/env bash
# use  MY_USERS for security, that way we wont overwrite a real environmental var
for user in $( cat users.txt ); do
	useradd $user 
done
