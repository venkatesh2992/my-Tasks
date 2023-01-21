#!/bin/bash
echo "Please enter the directory path"
read dir 
dir=`pwd`
find -name "*.java" -type f > java_files.txt
for file in `ls -1 $dir/*.java`
do
	if [ -f $file ]
	then
		echo $file
	fi
done

if [ $# -eq 0 ]
then
	echo "No files found in $dir"
else
	echo "Found $# files in $dir"
fi
if [ $# -gt 10 ]
then
	echo "Lasr 10 days only"
else
	echo "All files"
fi

rm -f $dir/*.java

