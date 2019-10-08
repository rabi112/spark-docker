#!/bin/bash
if [ $# -eq 0 ]
  then
    echo "Usage: ./build-images.sh <path/to/ca.crt>"
    exit 1
fi

set -e

echo "Copying the certificate file..."
cp $1 ./docker/base/ca.crt
cp $1 ./docker/mqtt_test/ca.crt

echo "Copying the conf folder..."
cp -r  ../conf ./docker/base/conf/

echo "Copying the jar file..."
cp ../target/scala-2.11/mqtt-assembly-0.1.jar docker/base/jars

echo "Building the base image..."
docker build -t spark-base:latest ./docker/base

echo "Building the spark-master image..."
docker build -t spark-master:latest ./docker/spark-master

echo "Building the spark-worker image..."
docker build -t spark-worker:latest ./docker/spark-worker

echo "Building the spark-submit image..."
docker build -t spark-submit:latest ./docker/spark-submit

echo "clearing the conf directory..."
rm -r   ./docker/base/conf/conf


echo "Copying the jar file..."
cp ../test/PublishToMQTT-1.0-SNAPSHOT-jar-with-dependencies.jar docker/mqtt_test/

echo "building MQTT test image....."
docker build -t mqtt_test:latest ./docker/mqtt_test
