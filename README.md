# AWS EKS Script


#### Running the AWS EKS from scratch. By running the script, the container will do the below tasks:

### Launching EKS Cluster from AWS CLI Red hat Linux

   • `check the AWS CLI version`
   
   • `Download AWS CLI v2, unzip, and update: `
   
   https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html
   
   • `Configure the CLI`
   
   ```$ aws configure```
   
   • `Download kubectl, add permissions to binary, Copy the binary to a directory in your path`
			https://docs.aws.amazon.com/eks/latest/userguide/install-kubectl.html
   
   • `Download eksctl, Move the extracted binary to /usr/bin`
   
   https://docs.aws.amazon.com/eks/latest/userguide/getting-started-eksctl.html

   • `Creating an AWS EKS cluster`

   • `Launch and Configure Amazon EKS Worker Nodes`



# Variables to change:

`deployment.yaml` file 

```
   $aws configure
   For AWS Access Key ID, paste in the access key ID you copied earlier.
   
   For AWS Secret Access Key, paste in the secret access key you copied earlier.
   
   For Default region name, enter your region.
   
   For Default output format, enter json.


```

`setup.sh` file is a script to run the prerequisite on Red Hat Linux.



### Run the below commands, it will take some [time]

Open the `<deployment name>.yaml` & `cluster.sh` and update with your Variables.

 sudo yum install -y git or sudo apt-get install -y git

 git clone https://github.com/branyangeks/eks.git && cd eks

 sh setup.sh (if installing dependencies on Red Hat Enterprise Linux)
 
 sh cluster.sh

