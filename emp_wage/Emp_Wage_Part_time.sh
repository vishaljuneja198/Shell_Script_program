#!/bin/bash -x

Emp_Check=$((RANDOM%3))
is_present=1
is_absent=0
is_part_time=2
Wage_per_hr=20

if [ $Emp_Check -eq $is_present ]
then
        Working_hrs=8
elif [ $Emp_Check -eq $is_part_time ]
then
        Working_hrs=8
else
        Working_hrs=0
fi

Daily_Emp_Wage=$(($Wage_per_hr*$Working_hrs))
echo "Employee Wage is $Daily_Emp_Wage"
