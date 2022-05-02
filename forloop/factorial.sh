echo "Enter the number of which factorial is to be find: \c"
read number

factorial=1

for (( num=1; num<=$number; num++ ))
do
	factorial=`expr $factorial \* $num` 
done
echo $factorial
