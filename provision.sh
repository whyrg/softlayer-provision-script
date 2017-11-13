#!/bin/bash

apt-get update 

apt-get install curl -y

curl -L -s  https://www.aerospike.com/download/server/latest/artifact/ubuntu16 -o aerospike-server.tgz

tar -C /opt -xzf aerospike-server.tgz 

cd /opt/aerospike-server*

./asinstall

