#!/bin/bash -x
echo "Welcome to Employee Wage Computation"

#constant
EMP_PRESENT=1
attendence=$((RANDOM%2))
if [[ $EMP_PRESENT -eq $attendence ]]
then
	echo "Employee is present"
else
	echo "Employee is absent"
fi

