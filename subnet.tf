resource "aws_subnet" "pub_subnet" {
  vpc_id                  = aws_vpc.terr_vpc.id
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone       = "us-west-2a"

  tags = {
    Name = "dev_pub_sub"
  }
}
