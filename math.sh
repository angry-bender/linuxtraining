#!/bin/bash
X=1
Y=3
ANS=$((X + Y))
echo "The answer is $ANS"
FPX=1.5
FPY=3.2
FPANS=$(echo "$FPX + $FPY" | bc)
echo "The floating point ans is $FPANS"
echo "hello"
