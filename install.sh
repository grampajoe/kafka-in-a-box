#!/bin/sh

set -e

apt-get update -y
apt-get install -y supervisor
rm -rf /var/lib/apt/lists/*

cd /opt
curl -L http://mirror.tcpdiag.net/apache/kafka/$KAFKA_VERSION/kafka_$SCALA_VERSION-$KAFKA_VERSION.tgz | tar zx

mv kafka_$SCALA_VERSION-$KAFKA_VERSION kafka
