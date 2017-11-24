#!/bin/bash
#mpstat -o JSON
#interval of 10 seconds and produce 1 sample of CPU data
#mpstat 10 1
mpstat 10 1 -o JSON | jq '100 - .sysstat.hosts[0].statistics[0]."cpu-load"[0].idle'
