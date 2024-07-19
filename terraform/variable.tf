variable "name" {
  description = "Project name"
  default = "manual-eks-deployment"
  type = string
}

variable "region" {
  description = "AWS region"
  default = "us-east-1"
  type = string
}

variable "zone1" {
  default = "us-east-1a"
}

variable "zone2" {
  default = "us-east-1b"
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
