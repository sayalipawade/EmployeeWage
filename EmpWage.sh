#!/bin/bash -x
echo "Welcome to Employee Wage Computation"

#constant
EMP_PRESENT=1
ISPART_TIME=2
EMP_ABSENT=0
EMP_RATE_PER_HOUR=20
NUM_OF_WORKING_DAYS=20
MAX_HRS=100

#variables
empSalary=0
totalEmpHours=0
totalWorkingDays=0
empHours=0
dailyWage=0
empMonthlyWage=0

#Calculating wages till No of working days and Hours using function
function getWorkingHours()
{
	case $1 in
		$EMP_PRESENT)
				empHours=8
				;;
		$ISPART_TIME)
				empHours=4
				;;
		$EMP_ABSENT)
				empHours=0
				;;
	esac
echo $empHours
}

#Calculating Daily wage along with monthly wage
while [[ $totalWorkingDays -le $NUM_OF_WORKING_DAYS && $totalEmpHours -le $MAX_HRS ]]
do
	empHours=$( getWorkingHours $((RANDOM%3)) )
	totalEmpHours=$((totalEmpHours+$empHours))
	((totalWorkingDays++))
	dailyWage=$((empHours*EMP_RATE_PER_HOUR))
	dailyWage[$totalWorkingDays]=$dailyWage
	empMonthlyWage=$((empMonthlyWage+dailyWage))
done
echo ${dailyWage[@]}
echo $empMonthlyWage

