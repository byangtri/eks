#! /usr/sh

# Use the profile which has IAM rights
export AWS_PROFILE=eks
echo "Using AWS profile: $AWS_PROFILE"

export AWS_REGION=us-east-1
echo "Using AWS region: $AWS_REGION"

# Check any existing EKS cluster
eksctl get cluster \
  --profile $AWS_PROFILE \
  --region $AWS_REGION

# Delete deployment, service
kubectl delete deployment -l app=tomcat
kubectl delete service -l app=tomcat
# confirm deletion
kubectl get deployments
kubectl get pods

# use profile "eks" and region "us-east-1" 
eksctl delete cluster \
  --profile $AWS_PROFILE \
  --region $AWS_REGION \
  --name wp-cluster

# confirm deletion
eksctl get cluster \
  --profile $AWS_PROFILE \
  --region $AWS_REGION