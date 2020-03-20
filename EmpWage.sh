#!/bin/bash -x
echo "Welcome to Employee Wage Computation"

#constant
EMP_PRESENT=1
ISPART_TIME=2
EMP_ABSENT=0
EMP_RATE_PER_HOUR=20
NUM_OF_WORKING_DAYS=20

#variables
empSalary=0

for (( day=1;day<=$NUM_OF_WORKING_DAYS;day++))
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
empSalary=$(($empHours*$EMP_RATE_PER_HOUR))
totalSalary=$(($totalSalary+$empSalary))
done
echo $totalSalary

