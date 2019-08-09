#!/bin/bash
SPARK_APPLICATION_JAR_LOCATION="/opt/spark-jars/spark-examples_2.11-2.3.0.jar"
SPARK_APPLICATION_MAIN_CLASS="org.apache.spark.examples.SparkPi"
#SPARK_SUBMIT_ARGS="--conf spark.executor.extraJavaOptions='-Dconfig-path=/opt/spark-apps/dev/config.conf'"

docker run  --network dockersparkcluster_default  -v /bdb/conf:/opt/spark-conf -v /bdb/jars:/opt/spark-jars --env SPARK_APPLICATION_JAR_LOCATION=$SPARK_APPLICATION_JAR_LOCATION --env SPARK_APPLICATION_MAIN_CLASS=$SPARK_APPLICATION_MAIN_CLASS spark-submit:latest
