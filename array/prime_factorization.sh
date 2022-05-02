echo "Enter the number for which you want the prime factors: "
read number

function prime_factorization()
{
	array=()
   num=$1
	count=0
   while [ $(( $num % 2 )) -eq 0 ]
   do
      array[$count]=2
		count=$(( $count + 1 ))
      num=$(( $num / 2 ))
   done

   for (( num_in=3; num_in<=$(( $num / 2 )); num_in=$(( $num_in + 2 )) ))
   do
      while [ $(( $num % $num_in )) == 0 ]
      do
         array[$count]=$num_in
			count=$(( $count + 1 ))
         num=$(( $num / $num_in ))
      done
   done

   if [ $num -gt 2 ]
   then
      array[$count]=$num
   fi
	echo "${array[@]}"
}


prime_factorization $number
