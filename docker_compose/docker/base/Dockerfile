FROM openjdk:8-jdk

ENV DAEMON_RUN=true
ENV SPARK_VERSION=2.3.3
ENV HADOOP_VERSION=2.7
ENV SPARK_HOME=/spark

#RUN apt-get update && apt-get install -y curl vim wget software-properties-common ssh net-tools ca-certificates jq
RUN apt-get update && apt-get install -y   curl  
#     apt update && apt -y upgrade \
#     apt install -y wget ca-certificates && \
#     apt install -y curl bash jq && \


# Add Dependencies for PySpark
#RUN apt-get install -y python3 python3-pip python3-numpy python3-matplotlib python3-scipy python3-pandas python3-simpy
#RUN update-alternatives --install "/usr/bin/python" "python" "$(which python3)" 1


RUN wget --no-verbose http://apache.mirror.iphh.net/spark/spark-${SPARK_VERSION}/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz && tar -xvzf spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz \
      && mv spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION} spark \
      && rm spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz

COPY ./conf/ /opt/bdb/
COPY ./jars/ /opt/bdb/jars/ 
COPY ./ca.crt /opt/bdb/certificate/

ENV BDB_EDGE_HOME='/opt/bdb/'
ENV BDB_EDGE_HOST_OUT='/opt/bdb/out'


COPY ./entrypoint.sh /entrypoint.sh
# Fix the value of PYTHONHASHSEED
# Note: this is needed when you use Python 3.3 or greater
#ENV PYTHONHASHSEED 1

CMD ["/bin/bash", "/entrypoint.sh"]

