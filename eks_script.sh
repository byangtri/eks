#!/bin/bash

#Download awscli v2:
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip

#Update current AWS CLI Install
sudo ./aws/install --bin-dir /usr/bin --install-dir /usr/bin/aws-cli --update

#Download kubectl
sudo curl --silent --location -o /usr/local/bin/kubectl \
   https://amazon-eks.s3.us-west-2.amazonaws.com/1.17.11/2020-09-18/bin/linux/amd64/kubectl

#Download eksctl
curl --silent --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
sudo mv /tmp/eksctl /usr/bin


sudo chmod +x /usr/local/bin/kubectl
sudo yum install --upgrade awscli && hash -r


#We should configure our aws cli with our current region as default.
export ACCOUNT_ID=$(aws sts get-caller-identity --output text --query Account)
export AWS_REGION=$(curl -s 169.254.169.254/latest/dynamic/instance-identity/document | jq -r '.region')

#Check if AWS_REGION is set to desired region
test -n "$AWS_REGION" && echo AWS_REGION is "$AWS_REGION" || echo AWS_REGION is not set

#Validate the IAM role
aws sts get-caller-identity --query Arn | grep eks_admin -q && echo "IAM role valid" || echo "IAM role NOT valid"
