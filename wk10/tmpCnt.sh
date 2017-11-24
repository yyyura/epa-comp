#!/bin/bash

cnt=`ls /tmp | wc -l`
maxnum=3

if [ $cnt -ge $maxnum ]; then
	echo "`date` Maximum numbers of files ($cnt) exceeded the parameter ($maxnum) in (/tmp) directory" >> /home/epa/epa-comp/wk10/log.txt
fi

