resource "aws_instance" "private-servers" {
  ami                         = var.ami
  instance_type               = var.instance_type
  key_name                    = var.key_name
  subnet_id                   = var.private-subnets
  vpc_security_group_ids      = [var.sg_id]
  associate_public_ip_address = true
  tags = {
    Name        = "private-server"
    environment = var.environment
  }
  user_data = <<-EOF
  	#!/bin/bash
        sudo apt-get update -y
  	    apt install net-tools -y
        curl https://get.docker.com/ | bash
             
  EOF
}
