#!/bin/sh

OUTDIR=$1
DURATION=$2


sysbench --num-threads=5 --max-requests=0 --max-time=$DURATION --test=oltp --oltp-dist-type=uniform --db-driver=mysql --mysql-host=rep1 --oltp-table-size=40000000 run | tee $OUTDIR/add_5_${DURATION}.out
