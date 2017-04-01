#!/bin/sh
echo "ssserver -s $SS_ADDR -p $SS_PORT -m $SS_METH -k $SS_PASS"
ssserver -s $SS_ADDR -p $SS_PORT -m $SS_METH -k $SS_PASS
