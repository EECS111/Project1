#!/bin/bash

matrix_size="4 8 16"
child_number="1 2 4"

total_child=0
tmp=0

for m in $matrix_size
do
	for t in $child_number
	do	
		echo "Execute matrixmul $m $t"

		#SC 2016-04-15: Not sure about this line, it's not doing anything....
		tmp=$(./matrixmul $m $t | grep -o Child | wc -l)
		total_child=$(($total_child+$tmp))
	done
done

# Fill here: print total how many child processes
# were used to calculate matrix multiplication
echo "Total $total_child children are used to perform matrix multiplication..."



