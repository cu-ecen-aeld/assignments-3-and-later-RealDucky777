#!/bin/bash

filesdir=$1
searchstr=$2

if [ -z "$filesdir" ]; then
    echo "No directory specified"
    exit 1
fi

if [ -z "$searchstr" ]; then
    echo "No string specified"
    exit 1
fi

if [ ! -d $filesdir ];then
    echo "Directory '$filesdir' does not exist"
    exit 1
fi

Y=$(grep -r $searchstr $filesdir 2> /dev/null | wc -l)
X=$(find $filesdir -type f | wc -l)

echo "The number of files are $X and the number of matching lines are $Y"