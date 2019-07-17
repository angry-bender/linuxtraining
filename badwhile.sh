#!/bin/bash
INC=0
while [[ $i -lt 10 ]]
do
	mkdir "folder$i"
	((i++)) #Incriments the number by 1
done
