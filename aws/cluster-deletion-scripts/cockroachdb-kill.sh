# Command to auto kill the kops cluster 
# that can run Cockroach Database.

kops delete cluster \
--name clusters.dev.insightdev18.com  \
--state s3://clusters.dev.insightdev18.com   \
--yes