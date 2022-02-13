variable "server_name" {
  default     = "ACME"
  description = "Nome do Servidor"
}

variable "ami_id" {
  default     = "ami-0b919b06e4a6a7040"
  description = "AMI da instancia AWS"
}

variable "instance_type" {
  default     = "t2.micro"
  description = "Tipo da instancia da AWS"
}

variable "cidr_add" {
  default     = "10.99.0.0/16"
  description = "Rede do ambiente a ser criado"
}

variable "ssh_public_key" {
  description = "Key para o SSH do servers"
}
