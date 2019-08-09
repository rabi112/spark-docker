#Environment variables used by the spark workers
#Do not touch this unless you modify the compose master
SPARK_MASTER=spark://spark-master:7077
#Allocation Parameters
SPARK_WORKER_CORES=4
SPARK_WORKER_MEMORY=6G
SPARK_DRIVER_MEMORY=1G
SPARK_EXECUTOR_MEMORY=2G
