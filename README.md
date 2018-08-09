# Project Idea 
My project explores the challenge of containerizing a data engineering pipeline with a database.
To help achieve this challenge, I will be using the [work of Eric Pinkham](https://github.com/ericapinkham/Insight_DE_GUS.git), an Insight Data Engineering
fellow of the 2018B session, and containerize his project.  

## Purpose / common use case
As stated in the title, this project aims to explore the challenge of containerizing a database. 
Because of their portability and efficiency on using system resources, containers are increasingly
being adopted by many companies. But the database is one of the hardest challenges to container 
adoption due to problems like data insecurity and specific hardware requirements required to run it. 
By containerizing a database, developers will be able to bring CI/CD principles to their database.
In addition, by running a db on containers, we get performance benefits which may not be possible from running a db
using virtualization. Lastly, it makes it more feasible for devlopers to move an entire app from a 
host provider, and prevent them from being locked to a specfic cloud vendor to host their application. 

## Technologies well suited to solve the potential challenges

From Eric's pipeline: Apache Airflow, Hadoop HDFS, Apache Spark, Amazon Elastic Load Balancer, Cockroach DB, Dash
New Technologies adopted: Docker,Kubernetes Orchestration? 

## Proposed Architecture

Take Eric's work and encompass each aspect of his app inside a Docker container. Kubernetes will be used
to coordinate the communication between the containers that host different aspects of the application. 

# Sources

[Eric Pinkham's data pipeline](https://github.com/ericapinkham/Insight_DE_GUS.git)

[Install Spark on AWS](https://sparkour.urizone.net/recipes/installing-ec2/)

[Maven Repo for Spark Releases](https://mvnrepository.com/artifact/org.apache.spark/spark-core_2.11/2.1.0)

[Overriding Jackson Dependencies incompatibilities](https://stackoverflow.com/questions/43841091/spark2-1-0-incompatible-jackson-versions-2-7-6)

[Python ODBC Docker dependency](https://stackoverflow.com/questions/46405777/connect-docker-python-to-sql-server-with-pyodbc)

[STS:AssumeRole](https://github.com/aws/aws-cli/issues/2279)

[CockroachDB Yaml file](https://github.com/kubernetes/examples/blob/master/staging/cockroachdb/cockroachdb-statefulset.yaml)

[Kubernetes command cheat sheet](https://carlos.mendible.com/2018/03/18/my-kubectl-cheat-sheet/)

[Spark K8s example](https://github.com/kubernetes/examples/tree/master/staging/spark)

[Run Scala Spark shell within master controller](http://blog.madhukaraphatak.com/scaling-spark-with-kubernetes-part-6/)

[K8s services in different namespaces](https://stackoverflow.com/questions/37221483/kubernetes-service-located-in-another-namespace)

[Assigning namespaces to contexts](https://dzone.com/articles/the-why-and-how-of-kubernetes-namespaces)

[Exposing K8s ports](http://alesnosek.com/blog/2017/02/14/accessing-kubernetes-pods-from-outside-of-the-cluster/)

[spark-submit with k8s](https://banzaicloud.com/blog/spark-k8s-internals/)

[2.3.1 Spark Docker image from Google](https://github.com/GoogleCloudPlatform/spark-on-k8s-operator/blob/master/manifest/spark-operator.yaml)
