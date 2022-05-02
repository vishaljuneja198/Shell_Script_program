echo "Enter a number between 1 to 7 : \c"
read number
case $number in
1)
		echo "SUNDAY"
		;;
2)
		echo "MONDAY"
		;;
3)
		echo "TUESDAY"
		;;
4)
		echo "WEDNESDAY"
		;;
5)
		echo "THRUSDAY"
		;;
6)
		echo "FRIDAY"
		;;
7)
		echo "SATURDAY"
		;;
*)
		echo "INVALID OUTPUT"
		;;
esac
