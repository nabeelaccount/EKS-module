variable "name" {
  description = "Project name"
  default = "manual-eks-deployment"
  type = string
}

variable "region" {
  description = "AWS region"
  default = "eu-west-2"
  type = string
}

variable "zone1" {
  default = "eu-west-2a"
}

variable "zone2" {
  default = "eu-west-2b"
}

variable "env" {
  description = "Deployment environment name"
  default = "development"
  type = string
}

variable "eks_name" {
  description = "EKS Cluster name"
  default = "main"
  type = string
}

variable "eks_version" {
  description = "The EKS version"
  default = "1.29"
  type = string
}
