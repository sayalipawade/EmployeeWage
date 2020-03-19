#!/bin/bash -x
echo "Welcome to Employee Wage Computation"

#constant
EMP_PRESENT=1
EMP_RATE_PER_HOUR=20
attendence=$((RANDOM%2))
if [[ $EMP_PRESENT -eq $attendence ]]
then
	empHours=8
	EmpSalary=$(($empHours*$EMP_RATE_PER_HOUR))
else
	empHours=0
	EmpSalary=0
fi

