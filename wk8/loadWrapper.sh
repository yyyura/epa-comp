#!/bin/bash
#./loadWrapper.sh 3 3
#to run as background process use &
~/epa-comp/wk8/loadtest $1 &
echo "Load Test Runing..."
pgrep loadtest
sleep $2
pkill loadtest
echo "end of test"
#pgrep loadtest
