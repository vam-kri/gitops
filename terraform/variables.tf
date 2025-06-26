variable "region" {
  default = "ap-south-1"
}
variable "cluster_name" {
  default = "gitops-eks-cluster"
}
variable "vpc_cidr" {
  default = "10.0.0.0/16"
}
variable "public_subnets" {
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}
variable "azs" {
  default = ["ap-south-1a", "ap-south-1b"]
}
variable "project" {
  default = "gitops"
}
