is_present=1
is_absent=0
is_part_time=2
Wage_per_hr=20
Working_days_per_month=1
Total_Salary_Monthly=0
# Total_Salary=0
Total_working_hrs=0
totalsalary=0
Workinghrsleft=100

function getworkhrs(){

        local total_working_hrs=$(($1+$2))
        echo "$total_working_hrs"
}

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

# Total_working_hrs=`getworkhrs Working_hrs Total_working_hrs`
Total_working_hrs=$Working_hrs
Workinghrsleft=$(($Workinghrsleft-$Working_hrs))
        # if [ $Total_working_hrs -le 100 ]
        # then
        #         echo "$Total_working_hrs"
        # else
        # break;
        # fi

dailywage=$(($Working_hrs*$Wage_per_hr))
totalsalary=$(($totalsalary + $dailywage))
Daily_Wage[$Working_days_per_month]="{"$dailywage","$totalsalary"}"

# Total_Salary=$(($Wage_per_hr*$Total_working_hrs))
# totalsalary=$(($totalsalary + $dailywage))
# Total_Salary[$Working_days_per_month]=$totalsalary
((Working_days_per_month++))
done
Total_Salary=$(($Wage_per_hr*$Total_working_hrs))
echo "Monthly Salary of Employee is $totalsalary"
# echo ${Working_day[@]}
echo ${Daily_Wage[@]}
# echo ${Total_Salary[@]}
# echo ${!Total_Salary[@]}
echo ${!Daily_Wage[@]}
