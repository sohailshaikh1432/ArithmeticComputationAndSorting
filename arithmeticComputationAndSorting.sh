#!/bin/bash -x

read -p "Enter input a : " a
read -p "Enter input b : " b
read -p "Enter input c : " c

declare -A operationDic
operation1=$(($a+$b*$c))
operation2=$(($a*$b+$c))
operation3=$(($a+$b/$c))
operation4=$(($a%$b+$c))

for (( i=1 ; i<=4 ; i++ ))
do
	operationDic[$i]=$((operation$i))
done
