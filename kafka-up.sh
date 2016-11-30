#!/usr/bin/env bash
# source up
KAFKA_HOME=./kafka_2.11-0.10.1.0
FLUME_HOME=./apache-flume-1.7.0-bin
TOPIC=collection
AGENT=tkfk

${KAFKA_HOME}/bin/zookeeper-server-start.sh -daemon ${KAFKA_HOME}/config/zookeeper.properties
${KAFKA_HOME}/bin/kafka-server-start.sh -daemon ${KAFKA_HOME}/config/server.properties
