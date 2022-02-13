output "server_ip" {
  value       = aws_instance.server.public_ip
  description = "Ip para acesso ao server"
}
