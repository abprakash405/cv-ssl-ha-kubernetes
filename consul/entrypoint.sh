#!/bin/sh
echo "127.0.0.1 server.dc1.cluster.local" >> /etc/hosts
export CONSUL_HTTP_ADDR=https://server.dc1.cluster.local:8501
/usr/bin/consul "$@"
