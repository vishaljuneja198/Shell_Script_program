echo "Enter a number: \c"
read num

if [ $num -eq 0 ] 
then 
	echo "The conversion of $num to word is : ZERO"
elif [ $num -eq 1 ]
then
	echo "The conversion of $num to word is : ONE"
elif [ $num -eq 2 ]
then
	echo "The conversion of $num to word is : TWO"
elif [ $num -eq 3 ]
then
	echo "The conversion of $num to word is : THREE"
elif [ $num -eq 4 ]
then
	echo "The conversion of $num to word is : FOUR"
elif [ $num -eq 5 ]
then
	echo "The conversion of $num to word is : FIVE"
elif [ $num -eq 6 ]
then
	echo "The conversion of $num to word is : SIX"
elif [ $num -eq 7 ]
then
	echo "The conversion of $num to word is : SEVEN"
elif [ $num -eq 8 ]
then
	echo "The conversion of $num to word is : EIGHT"
elif [ $num -eq 9 ]
then
	echo "The conversion of $num to word is : NINE"
else
	echo "Invalid INPUT"
fi
