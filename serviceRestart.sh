#!/bin/bash

service_name=$1
sudo systemctl status $service_name
status=$?
echo $status
if [ $status -eq 0 ]; then
	echo "service is already running"
elif [ $status -eq 4 ]; then
	echo "service doesnot exist"
elif [ $status -eq 3 ]; then
	echo "starting service $service_name"
	`sudo systemctl  restart $service_name`
fi