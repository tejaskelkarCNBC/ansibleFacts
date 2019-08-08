#!/bin/bash

echo '[' 

sudo netstat -ntlpu | grep -v Active | while IFS= read -r line

  do

    protocol=`echo $line | awk -F':' '{print $1}'`

    laddress=`echo $line | awk -F':' '{print $4}'`

    pid=`echo $line | awk -F':' '{print $6}'`

    printf '{"protocol" : "%s", "localAddress" : "%s", "processid" : "%s"},\n' "$protocol" "$laddress" "$pid"   
  
  done

#JSONString=`echo "{ "protocol": $protocol,  "localAddress": $laddress,  "processid": $pid }"`

#echo $JSONString
sed 's/,*$//' test.json

echo ']' 
