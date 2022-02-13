*[Em Desenvolvimento]*
---
# Terraform para criação de Instancia na AWS com modules

Esse repo contém o script [Terraform](https://www.terraform.io/) para criação de um servidor, firewall na [AWS](https://aws.amazon.com) e VPC com *modules*.

Base usada para demonstrações e estudo.

## Notas
No repositório local, é preciso criar um arquivo com as variáveis que são sensíveis e tem que permanecer seguras. Exemplo:

Nome: `terraform.tfvars`.
```
aws_access_key = ""
aws_secret_key = ""
```
> Incluir também outras variaveis que achar importante no arquivo acima.

## Maintainer
Mantido por [Taígo](https://github.com/taigorene).