# Command to auto kill the kops cluster 
# that can run Spark and HDFS together.

kops delete cluster \
--name clusterhdfs.dev.insightdev18.com  \
--state s3://clusterhdfs.dev.insightdev18.com   \
--yes