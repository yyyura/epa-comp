#!/bin/bash
value=`aws ec2 describe-instance-status --instance-ids $1 | grep running |  wc -l`
if [ $value -lt 1 ]; then
echo "no such instance running"
else
echo "the instance is running"
fi

#crontab -e
#*/1 * * * * /home/epa/epa-comp/wk6/instance-check.sh i-033390d4b2e4fb049 >> /home/epa/epa-comp/wk6/script_output.log
#*/1 * * * * /home/epa/epa-comp/wk6/instance-check.sh i-07bc96b8192810fe0 >> /home/epa/epa-comp/wk6/script_output.log
