#!/bin/bash
docker=$(docker ps -q)

for i in $docker
do 
   echo $i
   process=$(docker inspect --format '{{.State.Pid}}' $i)
   echo $process
   nsenter -t $process -n netstat -tnlp
done
