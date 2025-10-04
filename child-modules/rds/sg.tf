resource "aws_security_group" "rds-sg" {
  name        = var.rds_sg_name
  description = var.rds_sg_description
  vpc_id      = var.vpc_id

  ingress {
    description     = var.rds_sg_description
    from_port       = var.rds_sg_port
    to_port         = var.rds_sg_port
    protocol        = "tcp"
    security_groups = [var.ec2_sg_id]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.rds_sg_name
  }
}

