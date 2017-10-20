#!/bin/bash
#aws ec2 describe-instance-status --instance-ids i-033390d4b2e4fb049
#aws ec2 describe-instance-status --instance-ids i-07bc96b8192810fe0


value=`aws ec2 describe-instance-status --instance-ids $1 | grep running |  wc -l`
if [ $value -lt 1 ]; then
echo "no such instance running"
else
echo "the instance is running"
fi

#if [ $value -le $1 ]; then
#aws ec2 describe-instance-status --instance-ids i-033390d4b2e4fb049 | grep running |  wc -l
