output "sg_id" {
  description = "The ID of the EC2 security group"
  value       = aws_security_group.sg.id
}
