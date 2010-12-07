#!/bin/bash
#Script to search instances of contents of one file in another file
x=`awk 'END{print NR}' $1`
for (( p=1; p<=$x; p++ ))
do
y=`awk -v k=$p 'NR==k {print $0}' $1`
grep $y $2 >> $1_$2
done
exit
