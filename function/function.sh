function check_pallindrome()
{
	echo "Enter the first number: /c"
	read number1
	echo "Enter the second number: /c"
	read number2
	temp=0
	while [ $number1 -gt 0 ]
	do
		rem=$(( $number1 % 10 ))
		temp=$(( $temp * 10 + $rem ))
		number1=$(( $number1 / 10 ))
	done

	if [ $temp -eq $number2 ]
	then
		echo "Yes it is a pallindrome number"
	else
		echo "No it is not a pallindrome number"
	fi
}

check_pallindrome
