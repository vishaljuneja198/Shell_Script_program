wins=0
bets=0
stake=100

while [ $stake>0 -a $stake -le 200 ]
do
	bet=$(( RANDOM%2 ))
	if [ $bet -eq 1 ]
	then
		wins=`expr $wins + 1`
		stake=`expr $stake + 1`
	else
		stake=`expr $stake - 1`
	fi
	bets=`expr $bets + 1`
done

echo "The number of times he win is $wins"
echo "The number of bets he made is $bets"
