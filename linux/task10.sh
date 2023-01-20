#!/bin/bash

echo "Please enter string"
read str
len=${#str}
for ((i=0;  i<$len; i++));
do
	echo "${str:$i:1}"
done
