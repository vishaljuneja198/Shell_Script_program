function temperatureConversion()
{
	echo "Select from following: "
	echo "1.degreeC to degreeF"
	echo "2.degreeF to degreeC"

	echo "Enter your choice: "
	read choice

	case $choice in
		1)
			echo "Enter the temperature in degree centigrate: "
			read degC
		
			if [  ${degC%.*} -ge 0 -a ${degC%.*} -le 100 ]
			then
				degF=`echo $degC \* 9 / 5 + 32 | bc`
				echo "$degC degreeC : $degF degreeF"
			else
				echo "Exceeds the Freezing Point Limits"
			fi
			;;
		2)
			echo "Enter the temperature in Fahrenheit: "
			read degF
			if [ ${degF%.*} -ge 32 -a ${degF%.*} -le 212 ]
			then
				degC=`echo \( $degF - 32 \)  \* 5 / 9 | bc`
				echo "$degF degreeF : $degC degreeC"
			else
				echo "Exceeds the Freezing Point Limits"
			fi
			;;
		*)
			echo "Invalid Choice"
			;;
	esac
}


temperatureConversion
