#!/bin/bash 
echo "Rolling a die..."
echo "Face : $((RANDOM%6+1))"

echo "Rolling a die until any value reaches 10 times.."
declare -A face_value
face_one=1; face_two=2; face_three=3; face_four=4; face_five=5;
face_six=6;
count=0
c1=0; c2=0; c3=0; c4=0; c5=0; c6=0; c7=0;
while [[  c1 -lt 10 ]] && [[ c2 -lt 10 ]] && [[ c3 -lt 10 ]] && [[ c4 -lt 10 ]] && [[ c5 -lt 10 ]] && [[ c6 -lt 10 ]]
do
        roll=$((RANDOM%6+1))
        case $roll in
                $face_one)
                        face="One"
			((c1++))
                        ;;
                $face_two)
                        face="Two"
			((c2++))
                        ;;
                $face_three)
                        face="Three"
			((c3++))
                        ;;
                $face_four)
                        face="Four"
			((c4++))
                        ;;
                $face_five)
                        face="five"
			((c5++))
                        ;;
                $face_six)
                        face="Six"
			((c6++))
                        ;;
                *)
                        face="Unpredictable situtation happen"
        esac
        face_value[$face]=$roll
	((count++))
done
max=0; min=$c1
for (( i=1; i<=6; i++ ))
do
	if [[ $((c$i)) -gt $max ]]; then
	max=$((c$i))
	elif [[ $((c$i)) -lt $min ]]; then
	min=$((c$i))
	fi
echo "Face $i: $((c$i)) times"
	if [ $max -eq $((c$i)) ]; then
        facemax=$i
        elif [ $min -eq $((c$i)) ]; then
	facemin=$i
	fi
done
#for ((i=1; i<=6; i++ ))
#do
	#if [ $max -eq $((c$i)) ]; then
	#facemax=$i
	#fi
#done
echo "max:$max  min:$min"
echo "The face that rolled maximum times: $facemax"
echo "The face that rolled minimum times: $facemin"
echo "total rolled : $count"
