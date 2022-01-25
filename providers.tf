terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
}

# Terraform S3 backend
terraform{
  backend "s3" {
    bucket = "kpv-terraform"
    key    = "terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "terraform"  
  }
}
