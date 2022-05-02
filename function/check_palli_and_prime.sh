function pallindrome_of_prime()
{
	temp=0
	temp_num=$1
	while [ $temp_num  -gt 0 ]
	do
		rem=$(( $temp_num % 10 ))
		temp_num=$(( $temp_num / 10 ))
		temp=$(( $temp * 10 + rem ))
	done
	echo "The pallindrome of $1 is $temp"
	check_prime $temp
}

function check_prime()
{
	for (( num=2; num<=$(( $1/2 )); num++ ))
	do
		flag=1
		if [ $(( $1 % $num )) -eq 0 ]
		then
			flag=0
			break
		fi
	done

	if [ $flag -eq 1 ]
   then
		echo "Yes it is a prime number"
		echo "Do you want to check whether pallindrome of $1 is prime or not:press 0 for No and press 1 for yes"
		read choice
		if [ $choice -eq 1 ]
		then
			pallindrome_of_prime $1
		elif [ $choice -eq 0 ]
		then
			exit
		else
			echo "Invalid choice"
		fi
	else
		echo "Not a prime number"
	fi
}

echo "Enter the number"
read number

check_prime $number
