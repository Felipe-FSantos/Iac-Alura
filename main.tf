terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}
# Define qual o provedor que vamos implantar a 


provider "aws"{
    profile = "default"
    region = "us-west-2"
}
#Define o provedor, a região 


    #Define a instancia que vai criar automaticamente
resource "aws_instance" "app_server"{
    #Define a imagem que vamos utilizar
    ami = "ami-0cf2b4e024cdb6960"
    instance_type = "t2.micro"
    key_name = "iac-alura"
    # user_data = <<-EOF
    #             #!/bin/bash
    #         cd /home/ubuntu
    #         echo "<h1>Feito com Terraform</h1>" > index.html
    #         nohup busybox httpd -f -p 8080 &
    #             EOF
    

tags = {
    #Nome da Instancia
    Name = "Teste aws"
}
}