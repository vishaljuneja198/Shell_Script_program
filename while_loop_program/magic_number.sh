echo "Think a number between 1 to 100: "
read number

magic_number=$(( RANDOM%100 ))

while [ $number -ne  $magic_number ]
do
	if [ $number -le $magic_number ]
	then
		echo "Lower than magic number"
	else
		echo "Higher than Magic number"
	fi
	echo "Think again number between 1 to 100: \c"
	read number
done
echo "You successfully guess a right number"
