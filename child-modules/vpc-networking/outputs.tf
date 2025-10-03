output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "public_subnet_ids" {
  value = [for s in aws_subnet.pub-sub : s.id]
}

