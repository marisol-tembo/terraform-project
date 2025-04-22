resource "aws_internet_gateway" "gateway_terr" {
  vpc_id = aws_vpc.terr_vpc.id

  tags = {
    Name = "dev-igw"
  }
}
