region = "us-east-1"
iam_profile = "default"
vpc_cidr = "10.0.0.0/16"
vpc_name = "wordpress-vpc"
pub_sub = {
    wordpress-1 = "10.0.1.0/24"
    wordpress-2 = "10.0.2.0/24"
    wordpress-3 = "10.0.3.0/24"
    }
priv_sub = {
    wordpress-1 = "10.0.4.0/24"
    wordpress-2 = "10.0.5.0/24"
    wordpress-3 = "10.0.6.0/24"
    }
igw_name = "wordpress-igw"
rt_name = "wordpress-rt"
ec2_instance_ami = "ami-052064a798f08f0d3"
ec2_instance_type = "t3.micro"
ec2_instance_key = "test_nadiia"
ec2_instance_name = "wordpress-ec2"
