variable "region" {
    type = string
}

variable "iam_profile" {
    type = string
}

variable "vpc_name" {
    type = string
}

variable "vpc_cidr" {
    type = string
}

variable "pub_sub" {
  type = map
}

variable "priv_sub" {
  type = map
}

variable "igw_name" {
    type = string
}

variable "rt_name" {
    type = string
}

variable "ec2_instance_ami" {
  type = string
}

variable "ec2_instance_type" {
  type = string
}

variable "ec2_instance_key" {
  type = string
}

variable "ec2_instance_name" {
  type = string
}
