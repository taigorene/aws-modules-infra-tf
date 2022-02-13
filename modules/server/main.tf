terraform {
  required_version = ">=1.0.0"
}

resource "aws_key_pair" "server_key_pair" {
  key_name   = "${var.server_name} Key Pair"
  public_key = var.ssh_public_key
  tags = {
    Name      = "${var.server_name} Key Pair"
    Terraform = "true"
  }
}

resource "aws_vpc" "main" {
  cidr_block = var.cidr_add
  tags = {
    Name      = "${var.server_name} VPC"
    Terraform = "true"
  }
}

resource "aws_subnet" "servers" {
  vpc_id     = aws_vpc.main.id
  cidr_block = aws_vpc.main.cidr_block
  tags = {
    Name = "${var.server_name} Subnet"
  }
}

resource "aws_instance" "server" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = aws_subnet.servers.id

  tags = {
    Name      = "${var.server_name} Server"
    Terraform = "true"
  }
}
