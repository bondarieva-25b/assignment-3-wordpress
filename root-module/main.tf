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
    subnets = module.vpc-networking.public_subnet_ids
    ec2_instance_ami  = var.ec2_instance_ami
    ec2_instance_type = var.ec2_instance_type
    ec2_instance_key  = var.ec2_instance_key
    ec2_instance_name = var.ec2_instance_name
    ec2_sg_name       = var.ec2_sg_name
    ec2_sg_description = var.ec2_sg_description
    ec2_sg_allowed_ports = var.ec2_sg_allowed_ports
}

module "rds" {
  source = "../child-modules/rds"
  vpc_id = module.vpc-networking.vpc_id
  priv_subnet_ids = module.vpc-networking.private_subnet_ids
  subnets = module.vpc-networking.private_subnet_ids
  rds_name = var.rds_name
  rds_allocated_storage = var.rds_allocated_storage
  rds_storage_type = var.rds_storage_type
  rds_engine = var.rds_engine
  rds_engine_version = var.rds_engine_version
  rds_instance_class = var.rds_instance_class
  mysql_user = var.mysql_user
  mysql_pass = var.mysql_pass
  rds_db_name = var.rds_db_name
  rds_sub_group_name = var.rds_sub_group_name
  rds_sg_name = var.rds_sg_name
  rds_sg_description = var.rds_sg_description
  rds_sg_port = var.rds_sg_port
  ec2_sg_id = module.ec2.sg_id
}
