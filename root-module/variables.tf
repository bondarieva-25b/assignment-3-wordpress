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

variable rds_name {
  description = "The name of the RDS instance"
  type        = string
}

variable rds_allocated_storage {
  description = "The allocated storage in gigabytes"
  type        = number
}

variable rds_storage_type {
  description = "The storage type"
  type        = string
}

variable rds_engine {
  description = "The database engine to use"
  type        = string
}

variable rds_engine_version {
  description = "The version of the database engine"
  type        = string
}

variable rds_instance_class {
  description = "The instance class to use"
  type        = string
}

variable mysql_user {
  description = "The master username for the database"
  type        = string
}

variable mysql_pass {
  description = "The master password for the database"
  type        = string
}

variable rds_sub_group_name {
  description = "The name of the DB subnet group"
  type        = string
}

variable "rds_sg_name" {
    type = string
    description = "The name of the RDS security group"
}

variable "rds_sg_description" {
    type = string
    description = "The description of the RDS security group"
}

variable rds_sg_port {
    description = "List of ports to allow inbound traffic to RDS"
    type        = number
    default     = 3306
}

variable rds_db_name {
  description = "The name of the database"
  type        = string
}
