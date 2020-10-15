#!/bin/bash -x

declare -A face_value
read -p "Enter how many times you want to roll the dice: " ntimes
isroll=0;
face_one=1; face_two=2; face_three=3; face_four=4; face_five=5;
face_six=6;

while [[ isroll -lt ntimes ]]
do
	
	roll=$((RANDOM%6+1))
	case $roll in 
		$face_one)
			face="One"
			;;
		$face_two)
			face="Two"
			;;
		$face_three)
                        face="Three"
			;;
		$face_four)
                        face="Four"
			;;
		$face_five)
                        face="five"
			;;
		$face_six)
                        face="Six"
			;;
		*)
			face="Unpredictable situtaion happen"
	esac
	face_value[$face]=$roll
	isroll=$(( isroll + 1))
done
echo "${face_value[@]}"  #dictionaries do not allow duplicates
