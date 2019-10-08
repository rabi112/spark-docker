FROM openjdk:8-jdk

COPY ./PublishToMQTT-1.0-SNAPSHOT-jar-with-dependencies.jar /
COPY ./ca.crt /
COPY ./entrypoint.sh /
ENV MQTT_BROKER_URL=ssl://192.168.1.29:8883
ENTRYPOINT ["/entrypoint.sh"]
CMD []
