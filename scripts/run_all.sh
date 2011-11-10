#!/bin/sh

OUT_DIR=$1

for TIME in `seq 7200 -120 120`
do 
  sh add_5_more_sysbench.sh  $OUT_DIR  $TIME &
  sleep 120
done
