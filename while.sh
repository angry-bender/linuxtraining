#!/bin/bash
INC=0
while [[ $INC -lt 10 ]]
do
	mkdir "folder${INC}"
	((INC++)) #incriments the number by 1
done
