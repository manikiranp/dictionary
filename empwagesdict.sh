#!/bin/bash -x

parttime=1
fulltime=2
max_hrs_in_month=100
rate_per_hr=20
num_working_days=20

totalemphrs=0
totalworkingdays=0

declare -A dailywages

function getworkhrs() {
	case $1 in
		$parttime)
			emphrs=4
			;;
		$fulltime)
			emphrs=8
			;;
		*)
			emphrs=0
			;;
	esac
}

function getempwage() {
	echo $(($1*rate_per_hr))
}

while [[ $totalemphrs -lt $max_hrs_in_month && $totalworkingdays -lt $num_working_days ]]
do
	((totalworkingdays++))
	empcheck=$((RANDOM%3))
	getworkhrs $empcheck
	totalemphrs=$(($totalemphrs + $emphrs))
	dailywages[Day-"$totalworkingdays"]=$(($emphrs*$rate_per_hr))
done

totalsalary="$( getempwage $totalemphrs )"

echo ${dailywages[@]}
echo ${!dailywages[@]}
