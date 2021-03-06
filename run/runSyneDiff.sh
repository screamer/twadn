#! /bin/bash

path="./testdata/test/differentPair/test"

for ((i = 0; i < 100; i++))
do
	j=0
	bit=`ls $path$i/D*`

	for n in `ls $path$i/T*`
	do
		net[j]=$n
		j=`expr $j + 1`
	done

	net1=${net[0]}
	net2=${net[1]}

	echo test$i
	./twadn -inputnet1 $net1 -inputnet2 $net2 -inputbit $bit -timeLen1 9 -timeLen2 9 -evalue 1e-3 -output $path$i/Res_Pair1_test$i
done

