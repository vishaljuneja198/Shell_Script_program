
echo "Different Length units conersion are: "
echo "1.Feet to Inch"
echo "2.Feet to Meter"
echo "3.Inch to Feet"
echo "4.Meter to Feet"

echo "Enter any choice between 1 to 4: \c"
read choice
case $choice in
1)	echo "Enter the value in feet which you want to convert in Inch: \c "
	read feet
	inch=`echo $feet \* 12 | bc`
	echo "$feet feet = $inch inch"
	;;

2)	echo "Enter the value in feet which you want to convert in Meter: \c "
	read feet
	meter=`echo $feet \* .3048 | bc`
	echo "$feet feet = $meter meter"
	;;
3)	echo "Enter the value in inch which you want to convert in feet: \c "
	read inch
	feet=`echo $inch \* .0833 | bc` 
	echo "$inch inch = $feet feet"
	;;
4)	echo "Enter the value in meter which you want to convert in feet: \c "
	read meter
	feet=`echo $meter / .30480 | bc`
	echo "$meter meter = $feet feet"
	;;
*)
	echo "INVALID INPUT"
esac
