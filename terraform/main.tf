module "vpc" {
  source         = "./modules/vpc"
  region         = var.region
  vpc_cidr       = var.vpc_cidr
  public_subnets = var.public_subnets
  azs            = var.azs
}

module "iam" {
  source       = "./modules/iam"
  cluster_name = var.cluster_name
}

module "eks" {
  source       = "./modules/eks"
  cluster_name = var.cluster_name
  region       = var.region
  subnet_ids   = module.vpc.public_subnet_ids
  vpc_id       = module.vpc.vpc_id
}
