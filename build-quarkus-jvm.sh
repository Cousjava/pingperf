#!/bin/sh
mvn package  && sudo docker build -f Dockerfile.quarkus-jvm -t pingperf-quarkus-jvm .
mvn package -Ppayara-micro && sudo docker build -f Dockerfile.payara-micro -t pingperf-payara-micro .
mvn package -Popenliberty && sudo docker build -f Dockerfile.openliberty -t pingperf-openliberty .
