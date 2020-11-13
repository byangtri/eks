# eks
AWS EKS Script

Prerequisites


#### Running the AWS EKS from scratch By running the script, the container will do the below tasks:

## Launching EKS Cluster from AWS CLI

   • `check the AWS CLI version`
   
   • `Download AWS CLI v2, unzip, and update`
   
   • `Configure the CLI`
   
   • `For AWS Access Key ID, paste in the access key ID you copied earlier.`
   
   • `For AWS Secret Access Key, paste in the secret access key you copied earlier.`
   
   • `For Default region name, enter us-east-1.`
   
   • `For Default output format, enter json.`
   
   • `Download kubectl, add permissions to binary, Copy the binary to a directory in your path`
   
   • `Download eksctl, Move the extracted binary to /usr/bin`

   • `Creating an AWS EKS cluster`

   • `Launch and Configure Amazon EKS Worker Nodes`



# Variables to change:

`vars-eks-vpc.yaml` file defines your VPC network. 

```

   For AWS Access Key ID, paste in the access key ID you copied earlier.
   
   For AWS Secret Access Key, paste in the secret access key you copied earlier.
   
   For Default region name, enter us-east-1.
   
   For Default output format, enter json.


```

`eksscript.sh` file is script to build the EKS cluster.

```

export region=us-east-1
export instance_type=t3.medium
export keyname=eks
export ami=ami-dea4d5a1
export cluster_name=eks-master
export node_name=eks-worker

```

### Run the below command and grab a cup of coffee because it will take some [time]

Open the `vars-eks-vpc.yaml` & `cluster.sh` and update with your Variables.

 sudo yum install -y git

 git clone https://github.com/branyangeks/eks.git && cd eks

 sh eksscript.sh

```