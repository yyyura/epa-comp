#!/bin/bash
value=`aws s3 ls s3://$1 |  wc -l`
echo $value "files found in bucket"

#aws s3 ls
#epa-lab-week7
