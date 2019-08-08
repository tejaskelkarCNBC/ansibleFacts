#!/bin/bash

pCounter=0
counter=0

echo '[' 

sudo netstat -ntlpu 2>/dev/null | grep -v Active | grep -v Proto | grep -v identified | while read line
do
    
	if [ $counter -gt $pCounter ]
	then
		#echo "counter =  $counter"
		#echo "pCounter = $pCounter"

	 	printf ',\n'	
		pCounter=$counter
	fi

	protocol=`echo $line | awk -F' ' '{print $1}'`
	laddress=`echo $line | awk -F' ' '{print $4}'`
	pid=`echo $line | awk -F' ' '{print $7}'`

	printf '{"protocol" : "%s", "localAddress" : "%s", "processid" : "%s"}' "$protocol" "$laddress" "$pid"   

	counter=$(expr $counter + 1)

done

#JSONString=`echo "{ "protocol": $protocol,  "localAddress": $laddress,  "processid": $pid }"`

#echo $JSONString
#sed 's/,*$//' test.json

echo ']' 
