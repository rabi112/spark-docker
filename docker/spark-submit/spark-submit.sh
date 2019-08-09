 #!/bin/bash
export  BDB_EDGE_HOME='/opt/spark-conf'
 
/spark/bin/spark-submit \
	--verbose \
	--master ${SPARK_MASTER_URL} \
	--properties-file /opt/spark-conf/ltts_conf.properties \
	--class ${SPARK_APPLICATION_MAIN_CLASS} \
	--deploy-mode cluster \
	 ${SPARK_APPLICATION_JAR_LOCATION} 
