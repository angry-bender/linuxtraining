#!/usr/bin/env bash
# use  MY_USERS for security, that way we wont overwrite a real environmental var
MY_USERS=users.txt
for user in "$(cat "$MY_USERS")"; do
	useradd $user 
done
