#!/bin/bash

read filename

filename=$(wc -c $filename)

	echo "No of characters"

filename=$(wc -l $filename)

	echo "No of lines"
filename  =$(wc -w $filename)

	echo "No of words"

rev$filename

echo "Enter Word"

read word

grep -c "$word""$filename"

