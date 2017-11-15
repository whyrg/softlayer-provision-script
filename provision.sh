#!/bin/bash

set -x

version=${ASD_VERSION:-latest}


apt-get update 

apt-get install curl -y

if [[ -n "${EE_USER}" ]] && [[ -n "${EE_PASS}" ]]; then
curl -L -s --user ${EE_USER}:${EE_PASS} https://www.aerospike.com/enterprise/download/server/${version}/artifact/ubuntu16 -o aerospike-server-enterprise.tgz
else 
curl -L -s  https://www.aerospike.com/download/server/${version}/artifact/ubuntu16 -o aerospike-server-community.tgz
fi

tar -C /opt -xzf aerospike-server-*.tgz 

cd /opt/aerospike-server*

./asinstall

