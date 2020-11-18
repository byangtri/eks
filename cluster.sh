#! /usr/sh

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

# After 10 min or so, confirm again for desired EKS cluster
eksctl get cluster \
  --region $AWS_REGION

# Typically the config file would be stored as
#    ~/.kube/config
# If kubectl having port issues, run: aws eks --region $AWS_REGION update-kubeconfig --name tricentis-cluster

# Get the info of K8s cluster e.g. cluster IP
kubectl get svc
# Get the info of K8s nodes
kubectl get nodes

# Generate secret for MySQL db
kubectl create secret generic mysql-pass --from-literal=password=<your-secret-password-here>
# Confirm the secret configuration
kubectl get secrets


### === pod === ###
#  pod
kubectl create -f deployment.yaml
# Confirm!
kubectl get pvc
kubectl get pods

# Check the services
kubectl get services 
# OR use : kubectl get services --all-namespaces -o wide
kubectl get service <pod name> # Notice that the Load Balancer is setup
