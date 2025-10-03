module "vpc-networking" {
  source   = "../child-modules/vpc-networking"
  vpc_cidr = var.vpc_cidr
  vpc_name = var.vpc_name
  pub_sub  = var.pub_sub
  priv_sub = var.priv_sub
  igw_name = var.igw_name
  rt_name  = var.rt_name
} 

module "ec2" {
    source            = "../child-modules/ec2"
    vpc_id   = module.vpc-networking.vpc_id
    #public_subnet_ids = module.vpc-networking.public_subnet_ids
    subnets = module.vpc-networking.public_subnet_ids
    ec2_instance_ami  = var.ec2_instance_ami
    ec2_instance_type = var.ec2_instance_type
    ec2_instance_key  = var.ec2_instance_key
    ec2_instance_name = var.ec2_instance_name
    ec2_sg_name       = var.ec2_sg_name
    ec2_sg_description = var.ec2_sg_description
    ec2_sg_allowed_ports = var.ec2_sg_allowed_ports
}
