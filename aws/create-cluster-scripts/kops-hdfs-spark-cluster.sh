# Cluster for running Spark  and HDFS together

# Note: at this point you should set your aws credentials using
# the aws command line (aws configure), and established a route 53
# link you can point your cluster to. 

# This is the same exact command used to create 
# a cluster that was capable of running Spark
# & HDFS together. 

kops create cluster \
--name clusterhdfs.dev.insightdev18.com \
--node-size m4.2xlarge \
--master-size m4.2xlarge \
--master-volume-size 70 \
--node-count 5 \
--node-volume-size 70 \
--zones us-west-2a \
--state s3://clusterhdfs.dev.insightdev18.com \
--yes

kops validate cluster \
--state s3://clusterhdfs.dev.insightdev18.com