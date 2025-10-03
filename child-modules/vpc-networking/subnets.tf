resource "aws_subnet" "pub-sub" {
  vpc_id     = aws_vpc.vpc.id
  for_each = var.pub_sub
  cidr_block = each.value
  map_public_ip_on_launch = true

  tags = {
    Name = "pub-${each.key}"
  }
}

resource "aws_subnet" "priv-sub" {
  vpc_id     = aws_vpc.vpc.id
  for_each = var.priv_sub
  cidr_block = each.value

  tags = {
    Name = "priv-${each.key}"
  }
}
