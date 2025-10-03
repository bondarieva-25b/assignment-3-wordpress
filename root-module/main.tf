module "vpc-networking" {
  source   = "../child-modules/vpc-networking"
  vpc_cidr = var.vpc_cidr
  vpc_name = var.vpc_name
  pub_sub  = var.pub_sub
  priv_sub = var.priv_sub
  igw_name = var.igw_name
  rt_name  = var.rt_name
} 
