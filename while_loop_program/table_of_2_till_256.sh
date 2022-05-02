echo "Enter the number: \c"
read number
exp=1
num=1
while [ $exp -lt 256 -a $num -le $number ]
do
	exp=$(( 2 ** $num ))
	num=`expr $num + 1`
	echo $exp
done
