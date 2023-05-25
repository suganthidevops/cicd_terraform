resource "aws_instance" "web" {
  ami           = "ami-05a36e1502605b4aa"
  instance_type = "t2.micro"
  key_name      = "suganthidevops"
  subnet_id     = "subnet-0c3b21237ef3b887e"
  tags = {
    Name = "demo"
}

root_block_device {
  volume_size           = "15"
  volume_type           = "gp2"     
  delete_on_termination = true
}
ebs_block_device {
  device_name           = "/dev/xvda"
  volume_size           = "20"
  volume_type           = "gp2"   
  delete_on_termination = true
}
}