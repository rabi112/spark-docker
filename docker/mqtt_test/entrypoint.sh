#!/bin/bash
echo "You have passed as arguments: " $@
keytool -import -noprompt -trustcacerts -keystore $JAVA_HOME/jre/lib/security/cacerts -storepass changeit -alias Root -import -file /ca.crt
java -jar PublishToMQTT-1.0-SNAPSHOT-jar-with-dependencies.jar $@
