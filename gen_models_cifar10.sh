#!/bin/sh

while IFS=, read col1 col2 col3 col4
do
	if [ "$col1" == "Idx" ]
	then
		echo "$col1 *** $col2 *** $col3 *** $col4"
		continue
	else
		sed -e "s;%Idx%;$col1;g" -e "s;%Start%;$col2;g" -e "s;%End%;$col3;g" -e "s;%LR%;$col4;g" templates/cifar10_full_solver.txt > models/cifar10/cifar10_full_solver_$col1.prototxt
		sed -e "s;%Idx%;$col1;g" -e "s;%Start%;$col2;g" -e "s;%End%;$col3;g" -e "s;%LR%;$col4;g" templates/cifar10_full_train_test.txt > models/cifar10/cifar10_full_train_test_$col1.prototxt
	fi
done < src/vernu121-1.csv
