# README for AWS folder
This is the README file for the AWS folder. Within this folder, you will find the files containing 
the kops commands I used to create, validate, and terminate the Kubernetes clusters I used for my project. 

## What is Kops?
Kops is an AWS tool used to help create a Kubernetes cluster, which is what Kubernetes will run on and will manage
on your behalf. Although there are multiple tools available out there that allow you to create a Kubernetes cluster,
I chose Kops because it was the tool I had the most success in when it came to creating a cluster that fit my needs.

## A guide on how to set up a Kops cluster.
This guide assumes you intend to create a Kubernetes cluster using instances hosting Amazon's linux images. For the most
part, the steps I took largely reflect what was written on the AWS kops page linked below. 

1. The first thing you would need to do is to install the kubectl and kops command onto the EC2 instance where you 
will manage your clusters. This action can easily be done by executing the kops-install.sh file. 

2. After that, you have to give the IAM user the appropriate permissions (AmazonEC2FullAccess, 
AmazonRoute53FullAccess, AmazonS3FullAccess, IAMFullAccess, AmazonVPCFullAccess). At this point, you should 
now configure your managing instance with your AWS credentials (using AWS configure), which will be needed later.

3. This is, in my opinion, the most difficult and confusing step towards setting up a Kubernetes cluster
using kops, but once this step is done, creating a cluster will almost be a breeze. In the third step, you will have to
create an AWS domain name (like a wesbite like insightdev18.com) and a hosted zone for it (which should be included already
if you choose to buy a domain site name from Amazon). Althought there are ways to use a more "localhost" approach, I chose
the DNS approach since it seemed more practical to what people in the real world might do. For simplicity's sake I suggest
buying a domain name from AWS (around $12 USD at time of writing), where you already have a DNS hosted zone configured for
you. Take note of your domain name, you will need it in the next 2 steps.

4. Now, create an S3 bucket using your domain name (from the 3rd step) as its name. This can be done from command line
or from the AWS console. You are given the option to add versioning to the bucket, but it does not matter whether you
choose to do so or not. Everyting else can be left to their default options. 

5. This is the part where you actually execute the kops command to create the cluster you want to run Kubernetes on.
Sample cluster commands I used can be found within the folder create-cluster-scripts. When you use the kops command,
take note of the --name and --state parameters. To keep things simple, I would recommend naming your cluster the same
name you named your bucket, that way your name option would be (--name CLUSTERNAME) and the state option would be 
(--state s3://CLUSTERNAME). Once you execute the kops command correctly, the cluster will up and ready in a few minutes. 
A good sign of knowing your cluster is nearing completion is by verifying that new values are being added to your 
Route 53 hosted zone (just make sure those new values aren't 203, since they are template K8s domain names).

# Sources

[AWS kops page](https://aws.amazon.com/blogs/compute/kubernetes-clusters-aws-kops/)

[AWS Configure DNS](http://github.com/kubernetes/kops/blob/master/docs/aws.md#configure-dns)
