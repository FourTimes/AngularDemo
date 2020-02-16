this video to configure this senario?


## How to install awscli packages in ubuntu operating system?

sudo apt update
sudo apt install awscli


## awc command line configure machanisam

aws configure

# kops needed some parameters

The kops user will require the following IAM permissions to function properly:
   1. AmazonEC2FullAccess
   2. AmazonRoute53FullAccess
   3. AmazonS3FullAccess
   4. IAMFullAccess
   5. AmazonVPCFullAccess
You can create the kops IAM user from the command line using the following:


aws iam create-group --group-name kops
aws iam attach-group-policy --policy-arn arn:aws:iam::aws:policy/AmazonEC2FullAccess --group-name kops
aws iam attach-group-policy --policy-arn arn:aws:iam::aws:policy/AmazonRoute53FullAccess --group-name kops
aws iam attach-group-policy --policy-arn arn:aws:iam::aws:policy/AmazonS3FullAccess --group-name kops
aws iam attach-group-policy --policy-arn arn:aws:iam::aws:policy/IAMFullAccess --group-name kops
aws iam attach-group-policy --policy-arn arn:aws:iam::aws:policy/AmazonVPCFullAccess --group-name kops
aws iam create-user --user-name kops
aws iam add-user-to-group --user-name kops --group-name kops
aws iam create-access-key --user-name kops
aws configure get aws_access_key_id
aws configure get aws_secret_access_key

# NOTE IT:

this keys used for kops

finally got this parametees

AWS_ACCESS_KEY_ID: AKIAVFBBLN37LWX5AR6U
AWS_SECRET_ACCESS_KEY: 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

# cluster storge S3 (create s3 bucket)

aws s3api create-bucket --bucket awsjinojino  --region us-east-1
aws s3api put-bucket-versioning --bucket awsjinojino  --versioning-configuration Status=Enabled


## HOW TO INSTALL KOPS AND KUBECTL IN LOCALHOST?

# KOPS INSTALLTION

curl -Lo kops https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64
chmod +x ./kops
sudo mv ./kops /usr/local/bin/

# KUBECTL INSTALLTION

curl -Lo kubectl https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/local/bin/







how to create gitlap repos

create username and password in gitlab



---------------------------------------------------------------
username: cnlshanker
password: pcekktrc3wsxnojcwh5ypkvb2vblf7kk3g5cesf5jqgqcqt2ue4q


zjw3xobpkxvcogzkndljumwup7b4nyr5ivgu3yd5af4mgwdkkz7q






