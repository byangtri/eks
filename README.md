# AWS EKS Script


#### Running the AWS EKS from scratch By running the script, the container will do the below tasks:

### Launching EKS Cluster from AWS CLI

   • `check the AWS CLI version`
   
   • `Download AWS CLI v2, unzip, and update`
   
   • `Configure the CLI`
   
   • `Download kubectl, add permissions to binary, Copy the binary to a directory in your path`
   
   • `Download eksctl, Move the extracted binary to /usr/bin`

   • `Creating an AWS EKS cluster`

   • `Launch and Configure Amazon EKS Worker Nodes`



# Variables to change:

`<deployment>.yaml` file 

```

   For AWS Access Key ID, paste in the access key ID you copied earlier.
   
   For AWS Secret Access Key, paste in the secret access key you copied earlier.
   
   For Default region name, enter us-east-1.
   
   For Default output format, enter json.


```

`setup.sh` file is script to run the initial prerequisite.

```


```

### Run the below commands, it will take some [time]

Open the `<deployment name>.yaml` & `cluster.sh` and update with your Variables.

 sudo yum install -y git

 git clone https://github.com/branyangeks/eks.git && cd eks

 sh setup.sh
 
 sh cluster.sh

```
