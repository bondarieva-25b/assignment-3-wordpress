resource "aws_security_group" "sg" {
  name        = var.ec2_sg_name
  description = var.ec2_sg_description
  vpc_id      = var.vpc_id

  dynamic "ingress" {
    for_each = var.ec2_sg_allowed_ports
    content {
      description = ingress.value
      from_port   = tonumber(ingress.key)
      to_port     = tonumber(ingress.key)
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.ec2_sg_name
  }
}
