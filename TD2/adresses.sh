#!/bin/sh

echo "Numero contiennent X ou x : "
grep ["Xx"][0-9][0-9][0-9][0-9] dataTD2.txt
echo "ligne commance par trois chiffre puis tiret : "
grep ^[0-9][0-9][0-9]- dataTD2.txt
echo "ligne commance par S : "
grep ^S dataTD2.txt
num=`cat dataTD2.txt|wc -l`

while [ $num -gt 0 ]
do
	head dataTD2.txt -n $num | tail -n 2 >> pers_num.txt
	num=`expr $num - 5`
done
