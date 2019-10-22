#!/bin/sh
while true; #If loop without exit then it will run always
do
    set -e
    echo "this is the first script"
    #Finding out the status of every container
    actual=$(sudo docker ps --format "{{.Status}}:{{.Image}}")
    #printing out the result
    echo "Server says: $actual"
    if [ -n "$actual"  ]; then #string is not empty
        echo "Test passed"
        #do something here
        exit 0 
    else
        echo "Test failed"
        $(sudo docker-compose up -d)  
        echo $(./test2.sh)
        exit 1 #remove this 'Exit' field if you want to run this loop forever
fi
sleep 15m;
done