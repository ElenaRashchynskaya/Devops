#!/bin/bash

echo "Please enter a parameter"
read   n
x=0

if [ -z "$n" ]; then
  while [ 1 -le 1 ]
    do
    echo "Date and time" $(date '+%Y-%m-%d %H:%M:%S')
    x=$(( $x + 1 ))
    sleep 1
    done
else
    while [ $x -lt $n ]
    do
    echo "Date and time" $(date '+%Y-%m-%d %H:%M:%S')
    x=$(( $x + 1 ))
    sleep 1
    done
fi


