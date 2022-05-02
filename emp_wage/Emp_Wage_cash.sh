Emp_Check=$((RANDOM%3))
is_present=1
is_absent=0
is_part_time=2
Wage_per_hr=20

case $Emp_Check in 
        $is_present)
                Working_hrs=8;;
        $is_part_time)
                Working_hrs=8;;
        $is_absent)
                Working_hrs=0;;
esac

Daily_Emp_Wage=$(($Wage_per_hr*$Working_hrs))
echo "Employee Wage is $Daily_Emp_Wage"
