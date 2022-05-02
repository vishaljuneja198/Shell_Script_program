is_present=1
is_absent=0
is_part_time=2
Wage_per_hr=20
Working_days_per_month=20
Total_Salary_Monthly=0
Total_Salary=0
Total_working_hrs=0

while [ $Working_days_per_month -gt 0 ]
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

Total_working_hrs=$(($Working_hrs+$Total_working_hrs))

        if [$Total_working_hrs -le 100 ]
        then
                echo "$Total_working_hrs"
        else
        break;
((Working_days_per_month--))
done
Total_Salary=$(($Wage_per_hr*$Total_working_hrs))
echo "Monthly Salary of Employee is $Total_Salary"
