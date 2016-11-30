#!/usr/bin/env bash
# source down
KAFKA_HOME=./kafka_2.11-0.10.1.0

${KAFKA_HOME}/bin/kafka-server-stop.sh
${KAFKA_HOME}/bin/zookeeper-server-stop.sh
