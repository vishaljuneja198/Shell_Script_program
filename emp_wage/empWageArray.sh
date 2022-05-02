is_present=1
is_absent=0
is_part_time=2
Wage_per_hr=20
Working_days_per_month=1
Total_Salary_Monthly=0
Total_Salary=0
Total_working_hrs=0
Workinghrsleft=100
declare -A Daily_Wage

while [ $Working_days_per_month -le 20 ] && [ $Workinghrsleft -gt 0 ]
do
        Emp_Check=$((RANDOM%3))
        case $Emp_Check in 
                $is_present)
                        Working_hrs=8;;
                $is_part_time)
                        Working_hrs=8;;
                $is_absent)
                        Working_hrs=0;;
        esac

Workinghrsleft=$(($Workinghrsleft-$Working_hrs))

dailywage=$(($Working_hrs*$Wage_per_hr))
Total_Salary=$(($Total_Salary + $dailywage))

Daily_Wage[$Working_days_per_month]="{"$Working_days_per_month","$dailywage","$Total_Salary"}"

((Working_days_per_month++))
done
Total_Salary=$(($Wage_per_hr*$Total_working_hrs))
echo "Monthly Salary of Employee is $Total_Salary"

echo ${Daily_Wage[@]}
echo ${!Daily_Wage[@]}
