echo '...Decompressing Datasets (This takes a while)...'
bzip2 -d -k $DATASETS_HOME/dating/genders.json.bz2
bzip2 -d -k $DATASETS_HOME/dating/genders.csv.bz2
bzip2 -d -k $DATASETS_HOME/dating/ratings.json.bz2
bzip2 -d -k $DATASETS_HOME/dating/ratings.csv.bz2
bzip2 -d -k $DATASETS_HOME/movielens/ml-latest/movies.csv.bz2
cat $DATASETS_HOME/movielens/ml-latest/ratings.csv.bz2-part-* > $DATASETS_HOME/movielens/ml-latest/ratings.csv.bz2
bzip2 -d -k $DATASETS_HOME/movielens/ml-latest/ratings.csv.bz2
tar -xjf $DATASETS_HOME/dating/genders-partitioned.parquet.tar.bz2 -C $DATASETS_HOME/dating/
tar -xjf $DATASETS_HOME/dating/genders-unpartitioned.parquet.tar.bz2 -C $DATASETS_HOME/dating
tar -xjf $DATASETS_HOME/dating/ratings-partitioned.parquet.tar.bz2 -C $DATASETS_HOME/dating
tar -xjf $DATASETS_HOME/dating/ratings-unpartitioned.parquet.tar.bz2 -C $DATASETS_HOME/dating/
tar -xjf $DATASETS_HOME/dating/genders-partitioned.orc.tar.bz2 -C $DATASETS_HOME/dating/
tar -xjf $DATASETS_HOME/dating/genders-unpartitioned.orc.tar.bz2 -C $DATASETS_HOME/dating/
tar -xjf $DATASETS_HOME/dating/ratings-partitioned.orc.tar.bz2 -C $DATASETS_HOME/dating/
tar -xjf $DATASETS_HOME/dating/ratings-unpartitioned.orc.tar.bz2 -C $DATASETS_HOME/dating/
tar -xjf $DATASETS_HOME/dating/genders-partitioned.avro.tar.bz2 -C $DATASETS_HOME/dating/
tar -xjf $DATASETS_HOME/dating/genders-unpartitioned.avro.tar.bz2 -C $DATASETS_HOME/dating/
tar -xjf $DATASETS_HOME/dating/ratings-partitioned.avro.tar.bz2 -C $DATASETS_HOME/dating/
tar -xjf $DATASETS_HOME/dating/ratings-unpartitioned.avro.tar.bz2 -C $DATASETS_HOME/dating/
tar --directory $DATASETS_HOME/serving/recommendations/spark-1.6.1/ -xzvf $DATASETS_HOME/serving/recommendations/spark-1.6.1/als.tar.gz
tar --directory $DATASETS_HOME/notmnist/ -xzvf $DATASETS_HOME/notmnist/notMNIST_small.tar.gz

# these part files were created with the following command:
#   split --bytes=100MB --numeric-suffixes --suffix-length=1 lfw-deepfunneled.tgz lfw-deepfunneled.tgz-part-
cat $DATASETS_HOME/eigenface/lfw-deepfunneled.tgz-part-* > $DATASETS_HOME/eigenface/lfw-deepfunneled.tgz
tar --directory $DATASETS_HOME/eigenface/ -xzvf $DATASETS_HOME/eigenface/lfw-deepfunneled.tgz

# these part files were created with the following command:
#   split --bytes=100MB --numeric-suffixes --suffix-length=1 notMNIST_large.tar.gz notMNIST_large.tar.gz-part-
#cat $DATASETS_HOME/notmnist/notMNIST_large.tar.gz-part-* > $DATASETS_HOME/notmnist/notMNIST_large.tar.gz
#tar --directory $DATASETS_HOME/notmnist/ -xzvf $DATASETS_HOME/notmnist/notMNIST_large.tar.gz
