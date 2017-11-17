#!/bin/bash
#./loadWrapperLoop.sh 300 3
for (( i = 0 ; i <= $1; i+=20 ))
do
./loadtest $i &
echo "Load of $i users"
sleep $2
cat /proc/loadavg >> mylogfile
pkill loadtest
done






