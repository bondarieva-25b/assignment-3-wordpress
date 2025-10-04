region = "us-east-1"
iam_profile = "default"
vpc_cidr = "10.0.0.0/16"
vpc_name = "wordpress-vpc"
pub_sub = {
  wordpress-1 = { cidr = "10.0.1.0/24", az = "us-east-1a" }
  wordpress-2 = { cidr = "10.0.2.0/24", az = "us-east-1b" }
  wordpress-3 = { cidr = "10.0.3.0/24", az = "us-east-1c" }
}

priv_sub = {
  wordpress-1 = { cidr = "10.0.4.0/24", az = "us-east-1d" }
  wordpress-2 = { cidr = "10.0.5.0/24", az = "us-east-1e" }
  wordpress-3 = { cidr = "10.0.6.0/24", az = "us-east-1f" }
}
igw_name = "wordpress-igw"
rt_name = "wordpress-rt"
ec2_instance_ami = "ami-052064a798f08f0d3"
ec2_instance_type = "t3.micro"
ec2_instance_key = "test_nadiia"
ec2_instance_name = "wordpress-ec2"
ec2_sg_name = "wordpress-sg"
ec2_sg_description = "Allow SSH HTTP HTTPS inbound traffic"
ec2_sg_allowed_ports = {
    22  = "ssh from everyone"
    80  = "http from everyone"
    443 = "https from everyone"
  }
rds_name = "wordpress-mysql"
rds_allocated_storage = 20
rds_storage_type = "gp2"
rds_engine = "mysql"
rds_engine_version = "8.0.42"
rds_instance_class = "db.t3.micro"
mysql_user = "admin"
mysql_pass = "adminadmin"
rds_db_name = "wordpressdb"
rds_sub_group_name = "wordpress-db-sub-group"
rds_sg_name = "wordpress-rds-sg"
rds_sg_description = "Allow MySQL inbound traffic from EC2 instance"
rds_sg_port = 3306
