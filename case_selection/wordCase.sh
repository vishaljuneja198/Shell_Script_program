echo "Enter a number between 0 to 9 : \c"
read number
case $number in
0)
		echo "The conversion of $number in word format is ZERO"
		;;
1)
		echo "The conversion of $number in word format is ONE"
		;;
2)
		echo "The conversion of $number in word format is TWO"
		;;
3)
		echo "The conversion of $number in word format is THREE"
		;;
4)
		echo "The conversion of $number in word format is FOUR"
		;;
5)
		echo "The conversion of $number in word format is FIVE"
		;;
6)
		echo "The conversion of $number in word format is SIX"
		;;
7)
		echo "The conversion of $number in word format is SEVEN"
		;;
8)
		echo "The conversion of $number in word format is EIGHT"
		;;
9)
		echo "The conversion of $number in word format is NINE"
		;;
*)
		echo "INVALID INPUT"
		;;
esac
