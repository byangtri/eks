#!/bin/bash

# Launching EKS Cluster from AWS CLI

# check the AWS CLI version:
aws --version

cd ~

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
curl -o kubectl https://amazon-eks.s3.us-west-2.amazonaws.com/1.17.12/2020-11-02/bin/linux/amd64/kubectl

# permissions to binary
chmod +x ./kubectl

# Copy the binary to a directory in your path:
mkdir -p $HOME/bin && cp ./kubectl $HOME/bin/kubectl && export PATH=$PATH:$HOME/bin

kubectl version --short --client

# Download eksctl:
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp

# Move the extracted binary to /usr/bin:
sudo mv /tmp/eksctl /usr/bin
eksctl version

export AWS_REGION=us-east-1
echo "Using AWS region: $AWS_REGION"

export K8S_VERSION=1.17
echo "Using Kubernetes versoin: $K8S_VERSION"

# Check any existing EKS cluster
eksctl get cluster \
  --region $AWS_REGION

# use profile "eks" and region "us-east-1" 
# use matching kubectl version e.g. 1.17
#     Refer: https://docs.aws.amazon.com/eks/latest/userguide/install-kubectl.html

eksctl create cluster --name tricentis-cluster --version $K8S_VERSION --region $AWS_REGION --nodegroup-name standard-workers --node-type t3.micro --nodes 3 --nodes-min 1 --nodes-max 4 --node-ami auto

