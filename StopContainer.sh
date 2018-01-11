#!/usr/bin/sh
touch processFile.txt
        docker ps -a | grep "bash" >>  processFile.txt
echo "Stoping and removing list of container:"
        docker stop `awk '{print $1}' processFile.txt`
        docker rm `awk '{print $1}' processFile.txt`
rm processFile.txt