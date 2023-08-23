#! /bin/bash


# prints (n + 1 / 2)th Line.
var="wc -l < $1"
newVariable=$(eval $var)

sum=`expr $newVariable + 1`
line=`expr $sum / 2`

sort $1 | head -n $line | tail -1
