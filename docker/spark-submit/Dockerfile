FROM spark-base:latest

COPY spark-submit.sh /

ENV SPARK_MASTER_URL="spark://spark-master:7077"
ENV SPARK_SUBMIT_ARGS=""
ENV SPARK_APPLICATION_ARGS ""
#COPY ./ltts_conf.properties /spark/conf/ltts_conf.properties 

CMD ["/bin/bash", "/spark-submit.sh"]
