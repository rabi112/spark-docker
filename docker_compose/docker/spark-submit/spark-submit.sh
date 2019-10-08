 #!/bin/bash
sh entrypoint.sh
echo $BDB_EDGE_HOME
/spark/bin/spark-submit \
	--verbose \
	--master ${SPARK_MASTER_URL} \
	--class ${SPARK_APPLICATION_MAIN_CLASS} \
	--deploy-mode cluster \
	 ${SPARK_APPLICATION_JAR_LOCATION} 
