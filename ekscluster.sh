#!/bin/bash

# Launching EKS Cluster from AWS CLI

# check the AWS CLI version:
aws --version

# Download v2:
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

# Unzip the file:
unzip awscliv2.zip

which aws
# Update it
sudo ./aws/install --bin-dir /usr/bin --install-dir /usr/bin/aws-cli --update

aws --version

# Configure the CLI:
aws configure

# Download kubectl:
curl -o kubectl https://amazon-eks.s3.us-west-2.amazonaws.com/1.16.8/2020-04-16/bin/linux/amd64/kubectl

# permissions to binary
chmod +x ./kubectl

# Copy the binary to a directory in your path:
mkdir -p $HOME/bin && cp ./kubectl $HOME/bin/kubectl && export PATH=$PATH:$HOME/bin

# Download eksctl:
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp

# Move the extracted binary to /usr/bin:
sudo mv /tmp/eksctl /usr/bin
eksctl version

# Provision an EKS cluster with three worker nodes in us-east-1:

