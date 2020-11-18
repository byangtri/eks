#! /usr/sh

# After 10 min or so, confirm again for desired EKS cluster
eksctl get cluster \
  --region $AWS_REGION

# Typically the config file would be stored as
#    ~/.kube/config

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
