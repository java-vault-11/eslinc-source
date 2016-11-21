.PHONY: all

KAFKA_HOME = ./kafka_2.11-0.10.1.0
ZOOKEEPER = zookeeper
KAFKA = server

all: start-zookeeper
	echo Done.

start-zookeeper:
	($(KAFKA_HOME)/bin/$(ZOOKEEPER)-server-start.sh $(KAFKA_HOME)/config/$(ZOOKEEPER).properties &) \
	 && ($(KAFKA_HOME)/bin/$(KAFKA)-start.sh $(KAFKA_HOME)/config/$(KAFKA).properties &)
