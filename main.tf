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

  vpc_id     = "vpc-07f5704ebee213784"
  subnet_ids = ["subnet-028b31c3537c94b06", "subnet-01ee3661841f38898"]

  instance_type = "t3.medium"
  min_size      = 2
  max_size      = 3
  desired_size  = 2
  ami_id        = "ami-039454f12c36e7620"
  volume_size   = 200

  tags = {
    Name = "tmt-poc"
  }
}
