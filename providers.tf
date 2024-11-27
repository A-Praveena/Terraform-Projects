# provider "aws" {
#   region = var.aws_region
# }

# variable "aws_region" {
#   default = "us-east-1" # Replace with your desired region
# }
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"  # Use the desired version of the AWS provider
    }
  }
}

provider "aws" {
  region = "us-east-1"  # Replace with your desired region
}
