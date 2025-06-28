module "vpc" {
  source = "../modules/vpc"
}

module "eks" {
  source = "../modules/eks"

  # Pass values from vpc module to eks module
  vpc_id      = module.vpc.vpc_id
  subnet_ids  = module.vpc.private_subnets
  vpc_owner_id = module.vpc.vpc_owner_id
}

# module "pod-autoscaler" {
#   source = "../modules/metrics-server"
#   eks_cluster_name = module.eks-infra.eks_cluster_name
# }

# module "cluster-autoscaler" {
#   source = "../modules/cluster-autoscaler"
#   eks_cluster_name = module.eks-infra.eks_cluster_name
# }

# module "alb-controller" {
#   source = "../modules/alb-controller"
#   eks_cluster_name = module.eks-infra.eks_cluster_name
# }

# module "nginx-ingress" {
#   source = "../modules/nginx-ingress"
#   eks_cluster_name = module.eks-infra.eks_cluster_name
# }

# module "cert-manager" {
#   source = "../modules/cert-manager"
#   eks_cluster_name = module.eks-infra.eks_cluster_name
# }

# module "csi-storage-driver" {
#   source = "../modules/csi-storage-driver"
#   eks_cluster_name = module.eks-infra.eks_cluster_name
# }