#!/bin/bash
ELBADDRESS="CloudMotors-ELB-1206709707.us-west-2.elb.amazonaws.com"
echo "Press CTRL+C to exit..."

while :
do
	echo -n "Sending Metric..."
	PING=$(ping -c 1 $ELBADDRESS | grep 64 | awk '{print $7}' | grep -o "[0-9.]\+")
	CURL=$(curl -w %{time_total} -o /dev/null -s $ELBADDRESS)
	aws cloudwatch put-metric-data --metric-name PingTime --namespace "Cloud Motors" --value $PING
	aws cloudwatch put-metric-data --metric-name CurlTime --namespace "Cloud Motors" --value $CURL
	echo "Done"
	sleep 60

done
