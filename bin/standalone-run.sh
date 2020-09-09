#!/usr/bin/env sh
# Configuration of connect component is 2 parted. First you need to setup the basic worker connectivity to Kafka server.
# That is the first .properties file. Secondly, the desired connect feature needs to be configured. Here, the
# configuration is done in the latter file having the application specific configurations.

# wait for the services to come up: docker-compose up -d zookeeper broker
./standalone/confluent-5.5.1/bin/connect-standalone ../config/standalone-worker.properties ../config/standalone-connect-json.properties