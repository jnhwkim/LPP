#!/bin/bash

for Idx in {120..200}
do
	if [ $Idx == 1 ]
	then
		caffe train -solver=models/cifar10/cifar10_full_solver_${Idx}.prototxt
	else
		caffe train -solver=models/cifar10/cifar10_full_solver_${Idx}.prototxt -weights=snapshots/cifar10/cifar10_full_$(($Idx-1))_iter_50.caffemodel 
	fi
done

