# README CockroachDB
This is the README for the CockroachDB folder.

This folder containers the yaml file Kubernetes will use to create the cluster that will run the CockroachDB.
When you create the cluster, log into it and create a database called insight, a user called maxroach 
, and the appropriate tables as listed in the CreateGitHubTables sql file. 

Log in -> ```kubectl run cockroachdb -it --image=cockroachdb/cockroach --rm --restart=Never -- sql --insecure --host=cockroachdb-public```

Create database called insight -> ```CREATE DATABASE insight;```

Create user called maxroach -> ```CREATE USER maxroach;```

After creating all needed tables in CockroachDB database insight, run this. 
GRANT permisions to maxroach to use all current tables in database insight -> ```GRANT ALL ON insight.* TO maxroach;```

## Important Step
LASTLY, take note of the external ip of the cockroach-public service, you will need this info to configure 
the Spark job and Python front end to point to this public external ip. 

# Sources
[Using the CockroachDB cluster](https://www.cockroachlabs.com/blog/running-cockroachdb-on-kubernetes/)

[CockroachDB Yaml file](https://github.com/kubernetes/examples/blob/master/staging/cockroachdb/cockroachdb-statefulset.yaml)
