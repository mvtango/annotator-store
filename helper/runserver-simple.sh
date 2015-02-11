#! /bin/bash

RUNDIR=run
PIDFILE=$RUNDIR/pythonrun.pid

cd `dirname $0`/..
if [ -e $PIDFILE ] ; then
	kill -TERM `cat $PIDFILE`
fi 
venv/bin/python run.py  >$RUNDIR/pythonrun.stdout 2>&1 &
echo $!>$PIDFILE


