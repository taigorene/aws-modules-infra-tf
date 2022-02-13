provider "aws" {
  region     = "sa-east-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

module "servers" {
  source         = "../modules/server"
  server_name    = "MAKI"
  cidr_add       = "10.20.0.0/16"
  ssh_public_key = var.ssh_public_key
}
