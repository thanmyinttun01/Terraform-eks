variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
}

variable "cluster_version" {
  description = "Kubernetes version"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where EKS will be deployed"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs"
  type        = list(string)
}

variable "instance_type" {
  description = "Instance type for node group"
  type        = string
}

variable "min_size" {
  description = "Minimum number of nodes"
  type        = number
}

variable "max_size" {
  description = "Maximum number of nodes"
  type        = number
}

variable "desired_size" {
  description = "Desired number of nodes"
  type        = number
}

variable "ami_id" {
  description = "AMI ID for worker nodes"
  type        = string
}

variable "volume_size" {
  description = "Size of EBS volume"
  type        = number
}

variable "tags" {
  description = "Tags for the resources"
  type        = map(string)
}
