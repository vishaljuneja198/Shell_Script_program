
echo "Enter the number upto which you want a table: "
read number 
for (( i=1; i<=$number; i++ ))
do
	exp=$(( 2 ** $i ))
	echo $exp
done
