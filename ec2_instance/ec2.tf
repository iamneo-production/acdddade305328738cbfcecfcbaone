terraform {
  required_providers{
      aws = {
          source = "hashicorp/aws"
        }
    }
}

provider "aws" {
    region = ""
    access_key = "AKIAVLQIRAIXB6P6FKPI"
    secret_key = "no2BRBUkJkvbRIr/INsBh0f1Ero//mqxrBNeCZ9"
    
}

resource "aws_instance" "ec2_instance" {
    ami = ""
    instance_type = "t2.micro"
}

output "public_ip" {
    value = aws_instance.ec2_instance.public_ip
}