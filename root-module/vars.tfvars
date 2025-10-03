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
