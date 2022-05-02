heads=0
tails=0
while true
do
	coin=$(( RANDOM % 2 ))
	if [ $coin -eq 1 ]
	then
		heads=`expr $heads + 1`
		if [ $heads -eq 11 ]
		then
			break
		fi
	else
		tails=`expr $tails + 1`
		if [ $tails -eq 11 ]
		then
			break
		fi
	fi
done

if [ $heads -eq 11 ]
then
	echo "Heads Wins"
else
	echo "Tails Wins"
fi
