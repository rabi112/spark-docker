echo "Updating docker image of spark-submit"
docker load < ./spark-submit.tar
echo "Updating docker image of spark-master"
docker load < ./spark-master.tar
echo "Updating docker image of spark-worker"
docker load < ./spark-worker.tar
echo "Updating docker image of mqtt_test"
docker load < ./mqtt_test.tar
