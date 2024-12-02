variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
}

## Cost Usage and Reports Variables

variable "email_recipient" {
  type        = string
  description = "Email address to receive cost reports"
  default     = "recipient@example.com"
}

## Notes 

# Zip Lambda Function Code:
//Create your Lambda function (e.g., index.js) and zip it to create the lambda_function_payload.zip file. Upload this file to your working directory where Terraform can use it to deploy the Lambda function.

