# README CockroachDB
This is the README for the CockroachDB folder.

This folder containers the yaml file Kubernetes will use to create the cluster that will run the CockroachDB.
When you create the cluster, log into it and create a database called insight, a user called maxroach (& 
GRANT ALL ON insight.* TO maxroach;), and the appropriate tables as listed in the CreateGitHubTables sql 
file. 

## Important Step
LASTLY, take note of the external ip of the cockroach-public service, you will need this info to configure 
the Spark job and Python front end to point to this public external ip. 

# Sources
[Using the CockroachDB cluster](https://www.cockroachlabs.com/blog/running-cockroachdb-on-kubernetes/)

[CockroachDB Yaml file](https://github.com/kubernetes/examples/blob/master/staging/cockroachdb/cockroachdb-statefulset.yaml)
