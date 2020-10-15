#!/bin/bash 
declare -A month
echo "Generating birth month of 5O individuals:"
count=0
while [ $count -le 50 ]
do
i=$((RANDOM%12+1))
x=$((RANDOM%50+1))
month[month no.$i]=No.$x 
((count++))
done
for (( i=1; i<=12; i++ ))
do
echo "Born in $i th month are:"
echo ${month[month no.$i]} #dictionaries donot allow duplicates
done
