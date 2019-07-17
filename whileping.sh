#!/bin/bash
light_red='\e[1;91m%s\e[0m\n'                     
light_green='\e[1;92m%s\e[0m\n'
read -p "Enter the first the octects of a subnet to ping (192.168.0): " host
INC=1
while [[ $INC -lt 254 ]]
do
    ping -c 1 -w 1 -q "$host.$INC" > /dev/null                 
    if [ "$?" -eq 0 ]; then                           
    printf "$light_green" "[ $host.$INC CONNECTION AVAILABLE ]" >> validhosts.txt
    else                                              
    printf "$light_red" "[ $host.$INC HOST DISCONNECTED ]"    
    fi
    ((INC++))
done

