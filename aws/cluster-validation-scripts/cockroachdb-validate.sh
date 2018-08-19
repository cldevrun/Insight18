# A script to validate the creation of a K8s cluster capable of running
# a Cockroach DB. 

# Of course, another sure fire way to determine whether your
# cluster actually works is to check your route 53 domain for your
# Kubernetes domain and see if new nameserver values are being added.

kops validate cluster \
--name clusters.dev.insightdev18.com \
--state s3://clusters.dev.insightdev18.com