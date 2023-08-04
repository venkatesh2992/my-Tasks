#!/bin/bash

# Set your AWS region and other variables
REGION="us-west-1"
INSTANCE_TYPE="t2.micro"
AMI_ID="ami-0abcdef1234567890"  # Replace with your desired AMI ID
KEY_NAME="your-key-pair-name"
SECURITY_GROUP_NAME="my-security-group"
INSTANCE_NAME="MyInstance"

# Create a security group
aws ec2 create-security-group --group-name $SECURITY_GROUP_NAME --description "My security group"
aws ec2 authorize-security-group-ingress --group-name $SECURITY_GROUP_NAME --protocol tcp --port 22 --cidr 0.0.0.0/0

# Launch an EC2 instance
INSTANCE_ID=$(aws ec2 run-instances \
    --image-id $AMI_ID \
    --instance-type $INSTANCE_TYPE \
    --key-name $KEY_NAME \
    --security-groups $SECURITY_GROUP_NAME \
    --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$INSTANCE_NAME}]" \
    --query "Instances[0].InstanceId" \
    --output text)

echo "Instance $INSTANCE_ID is launching..."

# Wait for the instance to be running
aws ec2 wait instance-running --instance-ids $INSTANCE_ID

# Get the public DNS name of the instance
PUBLIC_DNS=$(aws ec2 describe-instances --instance-ids $INSTANCE_ID --query "Reservations[0].Instances[0].PublicDnsName" --output text)

echo "Instance $INSTANCE_ID is now running. Public DNS: $PUBLIC_DNS"

