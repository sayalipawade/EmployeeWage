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

while [[ $totalWorkingDays -le $NUM_OF_WORKING_DAYS && $totalEmpHours -le $MAX_HRS ]]
do
	attendence=$((RANDOM%3))
	case $attendence in
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
totalEmpHours=$(($totalEmpHours+$empHours))
done
totalSalary=$(($totalEmpHours*$EMP_RATE_PER_HOUR))
echo $totalSalary

