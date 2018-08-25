# README hadoop

This is the README file for the hadoop folder. This folder contains the files I used to create the pods that would 
run the Hadoop Distributed File System. 

## Setup

Setup is fairly straightforward. First, deploy the namenode yaml file (kubectl create -f namenode.yml). Once you do, take
note of the pod ip of hdfs-namenode-0 (can be found by running "kubectl get pod -o wide"). This pod ip will be used to 
configure the value for CORE_CONF_fs_defaultFS stored within datanode.yml and for the Spark job. 

Once the namenode pod has been deployed, deploy the datanode.yml file after configuring in the value of the namenode 
ip. Once it is up and running, the the datanodes will ping the namenode and that is how the namenode will know who
to talk to when it has to conduct map reduce operations. 

## Important Reminder

Take note of the pod ip for the HDFS namenode. The Spark job will be using this ip when it talks to HDFS.

# Sources

[HDFS ports](https://ambari.apache.org/1.2.3/installing-hadoop-using-ambari/content/reference_chap2_1.html)

[HDFS communication](https://data-flair.training/blogs/hdfs-data-read-operation/)
