# Project Idea 1
Containerization of a pipeline

## Purpose of project & common use cases
Automate an application deployment using containers.
Containers are more efficient in using system resources & enable CI/CD principles by allowing people 
to run containerized applications almost anywhere.

## Technologies well suited to solve the potential challenges

Jenkins, Docker, a dynamic web server like etcd, Consul, Zookeeper, container orchestration tools like Docker
Swarm / Kubernetes

## Proposed Architecture

Jenkins for the CI/CD pipeline, Docker for the container services, a dynamic web server to route traffic
for deployed containers, Docker Swarm / Kubernetes if application will consist of multiple containers working together

If time, look at cool Jenkins features like blue/green deployment, pre-build merging, etc.....

# Project Idea 2
Containerizing an app with a database

## Purpose / common use case
Containerizing a database allows developers to better create the same consistent environment for 
their application across development, staging, & production.
Makes it more feasible to more entire app from a host provider, and prevents vendor locking.
By running a db on containers, we get performance benefits which may not be possible from running a db
using virtualization. 

## Technologies well suited to solve the potential challenges

Jenkins, Docker, Cockroach DB, Kubernetes Orchestration? 

## Proposed Architecture

Build a unique streaming app & integrate with db and container tools, use Jenkins for CI/CD pipeline
