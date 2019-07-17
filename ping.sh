#!/bin/bash
light_red='\e[1;91m%s\e[0m\n'                     
light_green='\e[1;92m%s\e[0m\n'
read -p "Enter a hostname to ping: " host 
ping -c 1 -q "$host"  
ERRCODE=$?                     
if [ "$?" -eq 0 ]; then                           
  printf "$light_green" "[ CONNECTION AVAILABLE ] ${ERRCODE}"
else                                              
  printf "$light_red" "[ HOST DISCONNECTED ]"     
fi
