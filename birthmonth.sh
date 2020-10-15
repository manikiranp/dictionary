#!/bin/bash 
declare -A birth
echo "Generating birth month of 5O individuals:"
for (( i=1; i<=50; i++ ))
do
x=$((RANDOM%12+1))
echo "Birth month of No.$i individual: $x"
birth[$i]="$x"
done
echo ${birth[@]}
