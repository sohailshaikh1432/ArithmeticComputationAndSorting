#!/bin/bash -x

read -p "Enter input a : " a
read -p "Enter input b : " b
read -p "Enter input c : " c

declare -A operationDic
declare -a operationArray
operation1=$(($a+$b*$c))
operation2=$(($a*$b+$c))
operation3=$(($a+$b/$c))
operation4=$(($a%$b+$c))

for (( i=1 ; i<=4 ; i++ ))
do
	operationDic[$i]=$((operation$i))
done

for (( j=0 ; j<4 ; j++ ))
do
	operationArray[$j]=${operationDic[$(($j+1))]}
done

printf '%s\n' "${operationArray[@]}" | sort -n
