#!/bin/sh

filesdir=$1
searchstr=$2

if [ $# -eq 0 ];
then
  echo "$0: Missing arguments"
  exit 1
elif [ $# -gt 2 ];
then
  echo "$0: Too many arguments: $@"
  exit 1
else
  
if [ ! -d "$filesdir" ]; then
  echo "$filesdir directory does not exist."
  exit 1
fi
 
if [ -z "${searchstr}" ]; then
  echo "search string is empty."
  exit 1
fi

filescount=$(find $filesdir -type f | wc -l)
cd $filesdir
matching_lines=$(grep -r "$searchstr" ./ | wc -l) 2>stderr

echo "The number of files are $filescount and the number of matching lines are $matching_lines" 

fi
