resource "aws_security_group" "terr_sg" {
  name        = "dev_sg"
  description = "dev security group"
  vpc_id      = aws_vpc.terr_vpc.id

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }
}
