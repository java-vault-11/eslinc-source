#!/usr/bin/env bash
# source up
KAFKA_HOME=./kafka_2.11-0.10.1.0
FLUME_HOME=./apache-flume-1.7.0-bin
TOPIC=collection
AGENT=tkfk

#${KAFKA_HOME}/bin/kafka-topics.sh --zookeeper localhost:2181 --delete --topic ${TOPIC} || true
#sleep 2s
#${KAFKA_HOME}/bin/kafka-topics.sh --zookeeper localhost:2181 --create --replication-factor 1 --partition 1 --topic ${TOPIC}
${FLUME_HOME}/bin/flume-ng agent -n ${AGENT} -c conf -f ./conf/flume-conf.properties
