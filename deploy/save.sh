echo "Saving docker image of spark-submit"
docker save spark-submit > ./spark-submit.tar
echo "Saving docker image of spark-master"
docker save spark-master > ./spark-master.tar
echo "Saving docker image of spark-worker"
docker save spark-worker > ./spark-worker.tar
echo "Saving docker image of mqtt_test"
docker save mqtt_test > ./mqtt_test.tar
