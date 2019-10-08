export bdb_out=$1
./move_dir.sh
nohup docker-compose up > spark-submit.log 2>&1 &
