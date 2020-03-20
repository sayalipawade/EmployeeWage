#!/bin/bash -x
echo "Welcome to Employee Wage Computation"

#constant
EMP_PRESENT=1
ISPART_TIME=2
EMP_ABSENT=0
EMP_RATE_PER_HOUR=20

#variables
empSalary=0
attendence=$((RANDOM%3))
case $attendence in
		$EMP_PRESENT)
				empHours=8
				empSalary=$(($empHours*$EMP_RATE_PER_HOUR))
				;;
		$ISPART_TIME)
				empHours=4
				empSalary=$(($empHours*$EMP_RATE_PER_HOUR))
				;;
		$EMP_ABSENT)
				empHours=0
				empSalary=0
				;;
esac
echo $empSalary

