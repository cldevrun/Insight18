# Project Idea 
My project explores the challenge of containerizing a data engineering pipeline with a database.
To help achieve this challenge, I will be using the [work of Eric Pinkham](https://github.com/ericapinkham/Insight_DE_GUS.git), a Insight Data Engineering
fellow of the 2018B session, and containerize his project.  

## Purpose / common use case
Containerizing a database allows developers to better create the same consistent environment for 
their application across development, staging, & production.
Makes it more feasible to more entire app from a host provider, and prevents vendor locking.
By running a db on containers, we get performance benefits which may not be possible from running a db
using virtualization. 

## Technologies well suited to solve the potential challenges

From Eric's pipeline: Apache Airflow, Hadddop HDFS, Apache Spark, Amazon Elastic Load Balancer, Cockroach DB, Dash
New Technologies adopted: Docker,Kubernetes Orchestration? 

## Proposed Architecture

Take Eric's work and encompass each aspect of his app inside a Docker container. Kubernetes will be used
to coordinate the communication between the containers that host different aspects of the application. 
