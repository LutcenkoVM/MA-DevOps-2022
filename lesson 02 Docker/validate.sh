#!/bin/sh

dt=`date '+%d/%m/%Y_%H:%M:%S'`;

result=`wget -S --spider --no-check-certificate "http://wiki:3000"  2>&1 | grep 'HTTP/1.1 200 OK'`

if [ "$result" = '  HTTP/1.1 200 OK' ]
  then 
    echo "$dt" >>/mnt/test/online.txt
  else
    echo "$dt" >>/mnt/test/offline.txt
fi
