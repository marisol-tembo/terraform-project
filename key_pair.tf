resource "aws_key_pair" "marshall" {
  key_name   = "marshall"
  public_key = file("~/.ssh/marshall.pub")
}