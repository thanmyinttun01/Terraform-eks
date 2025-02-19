output "eks_cluster_id" {
  value = module.eks.eks_cluster_id
}

output "eks_cluster_arn" {
  value = module.eks.eks_cluster_arn
}

output "eks_cluster_endpoint" {
  value = module.eks.eks_cluster_endpoint
}

output "eks_cluster_security_group_id" {
  value = module.eks.eks_cluster_security_group_id
}
