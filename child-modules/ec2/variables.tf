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

variable "ec2_sg_name" {
  type = string
}

variable "ec2_sg_description" {
  type = string
}

variable "ec2_sg_allowed_ports" {
  description = "Map of ports and their descriptions"
  type = map(string)
}

variable "vpc_id" {
  type        = string
  description = "The VPC ID for the security group"
}

variable "subnets" {
  type        = list(string)
  description = "List of public subnet IDs where EC2 can be launched"
}
