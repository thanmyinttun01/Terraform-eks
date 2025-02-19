terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-1" # Change this to your AWS region
}

module "eks" {
  source = "./modules/eks"

  cluster_name    = "tmt-poc-eks"
  cluster_version = "1.29"

  vpc_id     = "vpc-0xxxxx"
  subnet_ids = ["subnet-0xxxxx", "subnet-01xxxxxxx"]

  instance_type = "t3.medium"
  min_size      = 2
  max_size      = 3
  desired_size  = 2
  ami_id        = "ami-039454xxxxx"
  volume_size   = 200

  tags = {
    Name = "tmt-poc"
  }
}
