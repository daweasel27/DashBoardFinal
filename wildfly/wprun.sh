#!/bin/sh

/opt/jboss/wildfly/bin/standalone.sh -b 0.0.0.0 -bmanagement 0.0.0.0 --server-config=standalone-full.xml &
sleep 30
java -jar deploy-DataCollector-1.0.jar elk_kafka_1