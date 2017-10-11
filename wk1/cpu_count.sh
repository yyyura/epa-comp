#!/bin/bash
#cat /proc/cpuinfo
#grep -c 'processor' /proc/cpuinfo
grep -o 'processor' /proc/cpuinfo | wc -l
