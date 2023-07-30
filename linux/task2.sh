#!/bin/bash

echo "Enter filename"

read filename

char_count=$(wc -c < $filename)

	echo "No of characters: $char_count"

line_count=$(wc -l < $filename)

	echo "No of lines : $line_count"
word_count=$(wc -w < $filename)

	echo "No of words: $word_count"

rev $filename

echo "Enter Word"

read word

word_occurrences=$(grep -o -i -c "$word" "$filename")

echo "Occurrences of \"$word\": $word_occurrences"

