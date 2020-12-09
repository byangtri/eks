## Deploy PostgreSQL on Kubernetes
 Deploy a highly available instance of PostgreSQL

### Prerequisites

   • `Launching an Amazon EKS Cluster`
   
   • `Download and configure eksctl`
   
   • `Helm installed `
   
#### Deploying PostgreSQL through a Helm Chart

helm update

helm install demo stable/postgresql

#### Creating Test Data
Access the PgSQL client to create a test database, table, and adding a row.
First, let’s retrieve the password from the deployment.