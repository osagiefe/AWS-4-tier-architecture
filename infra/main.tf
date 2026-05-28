locals {
  instance_names = [
    "ansible-controller",
    "apache2",
    "jenkins",
    "webapp"
  ]
}

resource "aws_instance" "ec2" {
  count = 4

  ami                         = var.ami
  instance_type               = var.instance_type
  key_name                    = var.key_name
  subnet_id                   = aws_subnet.public[count.index].id
  vpc_security_group_ids      = [aws_security_group.ec2_sg.id]
  associate_public_ip_address = true

  tags = {
    Name = "${var.env_prefix}-${local.instance_names[count.index]}"
    AZ   = var.avail_zone[count.index]
  }
}