module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version

  vpc_id     = var.vpc_id
  subnet_ids = var.subnet_ids

  enable_irsa = true

  cluster_tags = var.tags

  eks_managed_node_groups = {
    default = {
      name           = "${var.cluster_name}-nodegroup"
      instance_types = [var.instance_type]
      min_size       = var.min_size
      max_size       = var.max_size
      desired_size   = var.desired_size
      ami_id         = var.ami_id

      # Node volume
      disk_size   = var.volume_size
      volume_type = "gp3"

      tags = var.tags
    }
  }
}
