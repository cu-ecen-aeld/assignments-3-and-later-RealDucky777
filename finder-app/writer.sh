#!/bin/bash

writefile=$1
writestr=$2

if [ -z "$writefile" ]; then
    echo "No file specified"
    exit 1
fi

if [ -z "$writestr" ]; then
    echo "No string specified"
    exit 1
fi

lastchar=${writefile: -1}

if [ "$lastchar" == "/" ]; then
    echo "Please enter a file path not a directory path"
    exit 1
fi

mkdir -p $writefile

rm -r $writefile

if [ "$?" == "1" ]; then
    echo "Error while creating the file"
    exit 1
fi

echo "$writestr" > "$writefile"