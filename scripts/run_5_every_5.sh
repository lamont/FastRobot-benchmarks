#!/bin/sh

OUT_DIR=$1
INTERVAL=300

for TIME in `seq 7200 -$INTERVAL $INTERVAL`
do 
  sh add_5_more_sysbench.sh  $OUT_DIR  $TIME &
  sleep $INTERVAL
done
