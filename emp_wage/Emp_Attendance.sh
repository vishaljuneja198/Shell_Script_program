#!/bin/bash -x

Emp_Check=$((RANDOM%2))
#is_present=1
#is_absent=0
if [ $Emp_Check -eq 1 ]
then
        echo "Employee is present"
else
        echo "Employee is absent"
fi
