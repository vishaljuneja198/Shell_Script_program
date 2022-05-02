x=$((1+RANDOM/99))
echo $x
y=$((1+RANDOM/99))
echo $y
z=$((1+RANDOM/99))
echo $z
a=$((1+RANDOM/99))
echo $a
b=$((1+RANDOM/99))
echo $b
c=$(($x+$y+$$z+$$a+$$b))

echo $c

d=(($c/5))
echo $d
