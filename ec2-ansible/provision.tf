terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.0.0"
    }
  }
  backend "s3" {
    bucket         = "fresh-devops-2026"
    key            = "terraform-ec2/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "fresh-devops"
  }
}

provider "aws" {
    region = "us-east-1"
}


resource "aws_s3_bucket" "for_self" {
  
}