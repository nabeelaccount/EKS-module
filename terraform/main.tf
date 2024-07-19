module "eks-infra" {
  source = "../modules/infra"
}

module "pod-autoscaler" {
  source = "../modules/metrics-server"
  eks_cluster_name = module.eks-infra.eks_cluster_name
}

module "cluster-autoscaler" {
  source = "../modules/cluster-autoscaler"
  eks_cluster_name = module.eks-infra.eks_cluster_name
}

module "alb-controller" {
  source = "../modules/alb-controller"
  eks_cluster_name = module.eks-infra.eks_cluster_name
}

module "nginx-ingress" {
  source = "../modules/nginx-ingress"
  eks_cluster_name = module.eks-infra.eks_cluster_name
}

module "cert-manager" {
  source = "../modules/cert-manager"
  eks_cluster_name = module.eks-infra.eks_cluster_name
}

module "csi-storage-driver" {
  source = "../modules/csi-storage-driver"
  eks_cluster_name = module.eks-infra.eks_cluster_name
}