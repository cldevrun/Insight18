# This is a script to install the kops and kubectl commands.

# ASSUMPTIONS      -- READ CAREFULLY!!!!! --

# This script assumes that the user intends to create a 
# Kubernetes cluster using Amazon's kops command. This script
# also assumes you intend to create these instances with Amazon's
# custom base Linux image. Also, after you install these commands,
# you must configure your instance to use your AWS credentials
# using the AWS command line. 

# Install kops

wget -O kops https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64
chmod +x ./kops
sudo mv ./kops /usr/local/bin/

# Install kubectl

wget -O kubectl https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/kubectl
