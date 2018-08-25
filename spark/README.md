# README Spark

This is a README file for the Spark folder. Within the Spark folder, there are two folders, one for Kubernetes and one
for Docker. The Docker folder contains code I used to build my own Spark image, which then referenced within the spark
yaml file. 

To simply deploy, just ```kubectl apply -f spark.yml``` 

After deploying, make sure to to edit the hosts file under the etc folder (``` etc/hosts```) for each pod Spark uses
and append the Kubernetes pod ips of all Spark master and workers. If this step is not done, the Spark job will fail since
the master will not know the ip addresses of its Spark workers. 

You can run commands on individual pods like this ```kubectl exec -ti PODNAME /bin/bash```
