echo "Enter the number which you want to check(Prime or not): "
read number
flag=1
for (( i=2; i<(`expr $number / 2`); i++ ))
do

	if [ `expr $number % $i` -eq 0 ]
	then
		flag=0
		break
	fi
done

if [ $flag -eq 1 ]
then
	echo "Yes,it is a prime number"
else
	echo "No it is not a prime number"
fi
