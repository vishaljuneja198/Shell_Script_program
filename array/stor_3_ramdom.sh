array=()
count_of_index=0
count=1
while [ $count -le 10 ]
do
	num=$(( RANDOM % 1000 ))

	length=0
	while [ $length -ne 3 ]
	do
		length=0
		temp=$num
		while [ $temp -gt 0 ]
		do
			temp=$(( $temp / 10 ))
			length=$(( $length + 1 ))
		done

		if [ $length -eq 3 ]
		then
			array[$count_of_index]=$num
			count_of_index=$(( $count_of_index + 1 ))
			break
		else
			num=$(( RANDOM % 1000 ))
		fi
	done
	count=$(( $count + 1 ))
done
echo ${array[@]}

max=${array[0]}
min=${array[0]}
for (( num=1; num<10; num++ ))
do
	if [ ${array[num]} -gt $max ]
	then
		max=${array[num]}
	elif [ ${array[num]} -lt $min ]
	then
		min=${array[num]}
	fi
done

second_max=${array[0]}
second_min=${array[0]}
for (( num=1; num<10; num++ ))
do
	if [ ${array[num]} -gt $second_max -a ${array[num]} -ne $max ]
	then
		second_max=${array[num]}
	elif [ ${array[num]} -lt $second_min -a ${array[num]} -ne $min ]
	then
		second_min=${array[num]}
	fi
done

echo "The second maximum in the array is : $second_max"
echo "The second minimum in the array is : $second_min"
