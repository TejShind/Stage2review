#!/bin bash
h=0
t=0
while [[ $h -lt 21 && $t -lt 21 ]]
do
	a=$((RANDOM%2))
		case $a in
      		0)
				((h++))
      		;;
      		1)
				((t++))
      		;;
		esac
done
	echo $h heads
	echo $t tails
	sum=$(($h + $t))
		if [ $h -eq 21 ]
		then
			y=$(($h - $t))
			echo Heads won by $y flips
		elif [ $t -eq 21 ]
		then
z=$(($t - $h))
echo tails won by $z flips
fi
h=`echo $h $sum | awk '{print (($1/$2)*100)}'`
echo $h% of Heads
t=`echo $t $sum | awk '{print (($1/$2)*100)}'`
echo $t% of Tails
