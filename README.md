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
