echo "Enter the number upto which you want to print prime numbers: \c"
read number
for (( num=2; num<=$number; num++ ))
do
	flag=1
	for (( num_in=2; num_in<=`expr $num / 2`; num_in++ ))
	do
		if [ `expr $num % $num_in` -eq 0 ]
		then
			flag=0
			break
		fi
	done
	if [ $flag -eq 1 ]
	then
		echo $num
	fi
done
