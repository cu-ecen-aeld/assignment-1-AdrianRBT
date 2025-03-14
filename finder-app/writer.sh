 #!/bin/sh

writefile=$1
writestr=$2

if [ $# -eq 0 ];
then
  echo "$0: Missing arguments"
  exit 1
elif [ $# -gt 2 ];
then
  echo "$0: Too many arguments: $@"
  exit 1
fi

writedir="$(dirname "${writefile}")"
mkdir -p $writedir

echo $writestr > $writefile

