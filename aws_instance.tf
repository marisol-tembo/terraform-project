resource "aws_instance" "dev_node" {
  instance_type          = "t2.micro"
  ami                    = data.aws_ami.server_ami.id
  key_name               = aws_key_pair.marshall.key_name
  vpc_security_group_ids = [aws_security_group.terr_sg.id]
  subnet_id              = aws_subnet.pub_subnet.id
  user_data              = file("userdata.tpl")

  root_block_device {
    volume_size = 10
  }
  tags = {
    Name = "dev-node"
  }
}