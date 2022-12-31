#!/bin/bash

echo "Enter find filename"

read filename

file=`ls | grep $filename -c`

if [ -f  $file ]
then
        echo "file is found"
        echo "Enter the word to be searched"
        read word

        file1=`cat $filename | grep -w $word -c`
        if [ $file1 -gt 0 ]
        then
                echo "The word is found $file1 times in file"

        else
                echo "The word is not found in the file"
        fi
else
        echo "The filename not found '/'"
fi

