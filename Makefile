.PHONY: all start-kafka stop-kafka

KAFKA_HOME = ./kafka_2.11-0.10.1.0
ZOOKEEPER = zookeeper
KAFKA = kafka


just-start-kafka:
	$(KAFKA_HOME)/bin/$(ZOOKEEPER)-server-start.sh -daemon $(KAFKA_HOME)/config/$(ZOOKEEPER).properties
	$(KAFKA_HOME)/bin/$(KAFKA)-server-start.sh -daemon $(KAFKA_HOME)/config/server.properties

start-kafka: just-start-kafka
ifeq ("$(shell $(KAFKA_HOME)/bin/$(KAFKA)-topics.sh --zookeeper localhost\:2181 --list \
	 | awk '$$1 == "cpu0" { print $$1 }')", "cpu0")
	echo "cpu0" exists
else
	make just-create-topic
endif

just-create-topic:
	$(KAFKA_HOME)/bin/$(KAFKA)-topics.sh --zookeeper localhost\:2181 --create --topic cpu0 --replication-factor 1 --partitions 1

stop-kafka:
	$(KAFKA_HOME)/bin/$(KAFKA)-server-stop.sh || true
	$(KAFKA_HOME)/bin/$(ZOOKEEPER)-server-stop.sh || true

