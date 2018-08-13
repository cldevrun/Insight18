kops create cluster \
--name clusterhdfs.dev.insightdev18.com \
--node-size m4.xlarge \
--master-size m4.xlarge \
--node-count 3 \
--zones us-west-2b \
--state s3://clusterhdfs.dev.insightdev18.com \
--yes

kops validate cluster \
--state s3://clusterhdfs.dev.insightdev18.com
