# Terraform WordPress Project

This repository contains Terraform modules to deploy a WordPress site on AWS with an EC2 instance and an RDS MySQL database within a custom VPC.

## Repository Structure

- **child-modules/**
  - **vpc-networking** – Creates VPC, public and private subnets, internet gateway, and routing.
  - **ec2** – Deploys EC2 instance with WordPress and associated security group.
  - **rds** – Deploys RDS MySQL instance with security group and DB subnet group.
- **root-module/** – Calls child modules, sets variables, and configures the infrastructure.

## Usage

1. Initialize Terraform:
```bash
cd root-module
terraform init
```
2. Plan and apply the infrastructure:
```
terraform plan -var-file=vars.tfvars
terraform apply -var-file=vars.tfvars
```
3. Destroy resources when finished:
```
terraform destroy -var-file=vars.tfvars
```
## Notes
* Configure variables in vars.tfvars to set CIDR blocks, instance types, and credentials.
* EC2 user data automatically installs WordPress and connects to RDS using provided credentials.
