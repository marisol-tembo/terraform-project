resource "aws_subnet" "terr_subnet" {
  vpc_id     = aws_vpc.terr_vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "terr_subnet"
  }
}
