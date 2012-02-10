#!/bin/bash
echo "Host                       Server              RT         UT          ST"
host=`hostname`
for server in http://www.maanas.co http://m4manas.xen.prgmr.com  
do
{ time curl -l $server | grep HTTP; } 2>time.out
rt=$(cat time.out | grep real| cut -f2)
ut=$(cat time.out | grep user| cut -f2)
st=$(cat time.out | grep sys| cut -f2)
arr=`cat time.out | grep :`
echo $arr
echo $host $server $rt $ut $st
done