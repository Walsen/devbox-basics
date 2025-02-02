#!/usr/bin/env python3

import boto3
from botocore.exceptions import ClientError

def list_s3_buckets():
    """
    List all S3 buckets in the AWS account
    """
    try:
        # Create an S3 client
        s3_client = boto3.client('s3')
        
        # Get list of buckets
        response = s3_client.list_buckets()
        
        print("S3 Buckets:")
        print("-----------")
        
        # Print bucket names
        for bucket in response['Buckets']:
            print(f"- {bucket['Name']}")
            
    except ClientError as e:
        print(f"Error: {e}")
        return None

if __name__ == "__main__":
    list_s3_buckets()

