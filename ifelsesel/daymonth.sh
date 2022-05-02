#Write a program that takes day and month from the command line and prints true if day of month is between March 20 and June 20, false otherwise.

echo "Enter the day in integer format: \c"
read day

echo "Enter the month from 1 to 12 : \c"
read month

if [ $month -le 6 -a $month -ge 3 ]
then 
	if [ $month -eq 3 ]
	then 	
		if [ $day -ge 20 -a $day -le 31 ]
		then
			echo "TRUE"
		else
			echo "FALSE"
		fi
	elif [ $month -eq 6 ]
	then 
		if [ $day -ge 1 -a $day -le 20 ]
		then
			echo "TRUE"
		else
			echo "FALSE"
		fi
	else
		echo "TRUE"
	fi
else
	echo "FALSE"
fi
