#!/bin/bash -x

declare -A result
read -p "Enter first number: " x
read -p "Enter second number: " y
read -p "Enter third number: " z

result[usecase2]=$(( $x + $y * $z ))
result[usecase3]=$(( $x * $y + $z ))
result[usecase4]=$(( $x + $y / $z ))
result[usecase5]=$(( $x % $y + $z ))
echo $result[usecase2]
echo $result[usecase3]
echo $result[usecase4]
echo $result[usecase5]
echo "usecase6 " ${result[@]}
 
arr=(${result[@]})
echo "arr1 " ${arr[@]}

read arr1
for (( i = 0; i < arr1; i++ ))
do
	read nos[$i]
done
 
#Now do the sorting of numbers

for (( i = 0; i < arr1; i++ ))
do
	for (( j = $i; j < arr1; j++ ))
	do
		if [ ${nos[$i]} -lt ${nos[$j]} ]; then
			t=${nos[$i]}
			nos[$i]=${nos[$j]}
			nos[$j]=$t
		fi
	done
done

# Printing the sorted number in descending order

echo -e "\nSorted Numbers in Descending order"
for (( i = 0; i < arr1; i++ ))
do
	echo ${nos[$i]}
done

#Ascending order

read arr1
	for (( i = 0; i <= arr1; i++ ))
	do
		read nos[$i]
	done

#Now do the sorting of numbers

for (( i = 0; i <= arr1; i++ ))
do
	for (( j = $i; j <= arr1; j++ ))
	do
		if [ ${nos[$i]} -gt ${nos[$j]} ]; then
		t=${nos[$i]}
		nos[$i]=${nos[$j]}
		nos[$j]=$t
		fi
	done
done
# Printing the sorted number in Ascending order

echo -e "\nSorted Numbers in Ascending order "
for (( i = 0; i <= arr1; i++ ))
do
	echo ${nos[$i]}
done
