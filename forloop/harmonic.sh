echo "Enter the number upto which you want an harmonic series: \c"
read number
sum=0
for (( num=1; num<=$number; num++ ))
do
	sum=`expr $sum + 1 / $num`
done
echo "The sum of harmonic series upto $number is $sum"
