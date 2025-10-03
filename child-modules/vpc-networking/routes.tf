# Create IGW route table
resource "aws_route_table" "igw-rt" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = var.rt_name
  }
}

# Associate IGW route table with public subnets
resource "aws_route_table_association" "public" {
  for_each       = aws_subnet.pub-sub
  subnet_id      = each.value.id
  route_table_id = aws_route_table.igw-rt.id
}
