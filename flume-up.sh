#!/usr/bin/env bash
# source up
KAFKA_HOME=./kafka_2.11-0.10.1.0
FLUME_HOME=./apache-flume-1.7.0-bin
TOPIC=collection
AGENT=tkfk

${FLUME_HOME}/bin/flume-ng agent -n ${AGENT} -c conf -f ./conf/flume-conf.properties
