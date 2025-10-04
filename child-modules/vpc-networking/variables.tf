variable "vpc_name" {
    type = string
}

variable "vpc_cidr" {
    type = string
}

# variable "pub_sub" {
#   type = map(string)
# }

variable "pub_sub" {
  description = "Map of public subnets with CIDR and AZ"
  type = map(object({
    cidr = string
    az   = string
  }))
}

variable "priv_sub" {
  description = "Map of private subnets with CIDR and AZ"
  type = map(object({
    cidr = string
    az   = string
  }))
}

variable "igw_name" {
    type = string
}

variable "rt_name" {
    type = string
}
