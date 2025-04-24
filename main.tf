resource "aws_vpc" "terr_vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "terr_dev_vpc"
  }
}
