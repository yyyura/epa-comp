#!/bin/bash
cnt=`grep processor /proc/cpuinfo | wc -l`
if [ $cnt​ == $1​ ]; then
echo "CPU​ ​ Configuration​ ​ correct"
fi
