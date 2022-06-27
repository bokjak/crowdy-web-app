terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 4.16"
        }
    }
  required_version = ">= 0.12"
}

provider "aws" {
    profile = "default"
    region = "ap-northeast-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-058165de3b7202099"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}