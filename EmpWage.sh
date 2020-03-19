#!/bin/bash -x
echo "Welcome to Employee Wage Computation"

#constant
EMP_PRESENT=1
PART_TIME=2
EMP_RATE_PER_HOUR=20
attendence=$((RANDOM%3))
if [[ $EMP_PRESENT -eq $attendence ]]
then
	empHours=8
	EmpSalary=$(($empHours*$EMP_RATE_PER_HOUR))
elif [[ $PART_TIME -eq $attendence ]]
then
	empHours=4
	EmpSalary=$(($empHours*$EMP_RATE_PER_HOUR))
else
	empHours=0
	EmpSalary=0
fi

