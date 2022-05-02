declare -A dictionary

count_1=1
count_2=1
count_3=1
count_4=1
count_5=1
count_6=1


while true
do
	number=$(( ( RANDOM % 6 ) + 1 ))
	if [ $number -eq 1 ]
	then
		dictionary[face1]=$count_1
		if [ $count_1 -ge 10 ]
		then
			break
		elif [ $count_1 -lt 10 ]
		then
			count_1=$(( $count_1 + 1 ))
		fi
	elif [ $number -eq 2 ]
	then
		dictionary[face2]=$count_2
		if [ $count_2 -ge 10 ]
		then
			break
		elif [ $count_2 -lt 10 ]
		then
			count_2=$(( $count_2 + 1 ))
		fi
	elif [ $number -eq 3 ]
	then
		dictionary[face3]=$count_3
		if [ $count_3 -ge 10 ]
		then
			break
		elif [ $count_3 -lt 10 ]
		then
			count_3=$(( $count_3 + 1 ))
		fi
	elif [ $number -eq 4 ]
	then
		dictionary[face4]=$count_4
		if [ $count_4 -ge 10 ]
		then
			break
		elif [ $count_4 -lt 10 ]
		then
			count_4=$(( $count_4 + 1 ))
		fi
	elif [ $number -eq 5 ]
	then
		dictionary[face5]=$count_5
		if [ $count_5 -ge 10 ]
		then
			break
		elif [ $count_5 -lt 10 ]
		then
			count_5=$(( $count_5 + 1 ))
		fi
	elif [ $number -eq 6 ]
	then
		dictionary[face6]=$count_6
		if [ $count_6 -ge 10 ]
		then
			break
		elif [ $count_6 -lt 10 ]
		then
			count_6=$(( $count_6 + 1 ))
		fi
	fi
done


for value in ${!dictionary[@]};
do
	 max=${dictionary[$value]}
	 min=${dictionary[$value]}
	 break
done

for value in ${!dictionary[@]};

do
	if [ ${dictionary[$value]} -ge $max ]
	then
		max=${dictionary[$value]}
		face_of_max=$value
	else
		min=${dictionary[$value]}
		face_of_min=$value
	fi
done

echo "$face_of_max-$max"
echo "$face_of_min-$min"
