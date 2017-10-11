#!/bin/bash
value=`grep processor /proc/cpuinfo | wc -l`
if [ $value -le $1 ]; then
echo "not enought"
else
echo "ok"
fi
