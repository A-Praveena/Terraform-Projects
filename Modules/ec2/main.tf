provider "aws" {
  region = var.aws_region
}

variable "aws_region" {
  default = "us-east-1" # Replace with your desired region
}


resource "aws_instance" "auto-demo-instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Name = var.instance_name
  }
}