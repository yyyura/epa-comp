#!/bin/bash

cnt=`grep processor /proc/cpuinfo | wc -l`

if [ $cnt -lt 5 ] ;then
echo "too few CPUs, exiting"
fi

