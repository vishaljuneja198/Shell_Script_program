echo "Enter first number: \c"
read first_num
echo "Enter second number: \c"
read second_num
echo "Enter third number: \c"
read third_num
operation_1=`expr $first_num + $second_num \* $third_num`
operation_2=`expr $first_num % $second_num \* $third_num`
operation_3=`expr $first_num + $second_num / $third_num`
operation_4=`expr $first_num \* $second_num + $third_num`

#Check MAXIMUM
if [ $operation_1 -gt $operation_2 -a $operation_1 -gt $operation_3 -a $operation_1 -gt $operation_4 ]
then
	echo "MAXIMUM is $operation_1"
elif [ $operation_2 -gt $operation_1 -a $operation_2 -gt $operation_3 -a $operation_2 -gt $operation_4 ]
then 
	echo "MAXIMUM is $operation_2"
elif [ $operation_3 -gt $operation_1 -a $operation_3 -gt $operation_2 -a $operation_3 -gt $operation_4 ]
then 
	echo "MAXIMUM is $operation_3"
else
	echo "MAXIMUM is $operation_4"
fi 

#Check MINIMUM
if [ $operation_1 -lt $operation_2 -a $operation_1 -lt $operation_3 -a $operation_1 -lt $operation_4 ]
then
	echo "MINIMUM is $operation_1"
elif [ $operation_2 -lt $operation_1 -a $operation_2 -lt $operation_3 -a $operation_2 -lt $operation_4 ]
then 
	echo "MINIMUM is $operation_2"
elif [ $operation_3 -lt $operation_1 -a $operation_3 -lt $operation_2 -a $operation_3 -lt $operation_4 ]
then 
	echo "MINIMUM is $operation_3"
else
	echo "MINIMUM is $operation_4"
fi 
