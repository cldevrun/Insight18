# Cluster for running CockroachDB

# Note: at this point you should set your aws credentials using
# the aws command line (aws configure), and established a route 53
# link you can point your cluster to. 

# This is the same exact command used to create 
# a cluster that was capable of running a Cockroach
# Database to store results made by Spark. 

kops create cluster \
--name clusters.dev.insightdev18.com \
--node-size  m4.2xlarge \
--master-size m4.2xlarge \
--master-volume-size 70 \
--node-count 4 \
--node-volume-size 70 \
--zones us-west-2a \
--state s3://clusters.dev.insightdev18.com  \
--yes