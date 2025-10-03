locals {
  first_pub_subnet_id = var.subnets[0]
}

resource "aws_instance" "ec2" {
  depends_on = [ aws_security_group.sg ]
  ami           = var.ec2_instance_ami
  instance_type = var.ec2_instance_type
  vpc_security_group_ids = [aws_security_group.sg.id]
  key_name = var.ec2_instance_key
  subnet_id = local.first_pub_subnet_id
  user_data = file("${path.module}/wordpress_user_data.sh")

  tags = {
    Name = var.ec2_instance_name
  }
}
