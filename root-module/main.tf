module "vpc" {
  source       = "../child-modules/vpc-networking"
  vpc_cidr     = var.vpc_cidr
  vpc_name     = var.vpc_name

}
