#!/bin/bash
SPARK_APPLICATION_JAR_LOCATION="/opt/spark-jars/mqtt-assembly-0.1.jar"
SPARK_APPLICATION_MAIN_CLASS="com.bdb.mqtt.MQTTSubscriberApp"
#SPARK_SUBMIT_ARGS="--conf spark.executor.extraJavaOptions='-Dconfig-path=/opt/spark-apps/dev/config.conf'"

docker run  --network sparkdocker_default  -v /bdb/conf:/opt/spark-conf -v /bdb/jars:/opt/spark-jars --env SPARK_APPLICATION_JAR_LOCATION=$SPARK_APPLICATION_JAR_LOCATION --env SPARK_APPLICATION_MAIN_CLASS=$SPARK_APPLICATION_MAIN_CLASS spark-submit:latest
