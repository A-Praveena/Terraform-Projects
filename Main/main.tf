module "vpc" {
  source      = "../modules/vpc"
  cidr_block  = "10.0.0.0/16"
  vpc_name    = "example-vpc"
}

module "ec2" {
  source         = "../modules/ec2"
  ami_id         = "ami-0715c1897453cabd1"
  instance_type  = "t2.micro"
  key_name       = "my-key"
  instance_name  = "example-instance"
}

module "static_website" {
  source            = "../modules/s3"
  bucket_name       = "my-static-demo-bucket"
  index_document    = "index.html"
  error_document    = "error.html"
  index_html_source = "../files/index.html"
  error_html_source = "../files/error.html"
  tags = {
    Environment = "Production"
    Name        = "StaticWebsiteBucket"
  }
}



# module "lambda_function" {
#   source                 = "../Modules/demoLambda"  # Path to the Lambda module
#   lambda_function_name    = "my-example-lambda"
#   lambda_execution_role_arn = "arn:aws:iam::your-account-id:role/your-lambda-execution-role"  # Replace with your Lambda execution role ARN
#   handler                = "index.handler"    # The Lambda function handler
#   runtime                = "nodejs14.x"       # The runtime environment
#   lambda_zip_path        = "./lambda/lambda.zip"  # Path to your zipped Lambda function
#   environment_variables  = {
#     VAR1 = "value1"
#     VAR2 = "value2"
#   }
# }

module "dynamodb" {
  source         = "../Modules/dynamodb"
  table_name     = "MyDemoTable"
  hash_key       = "ID"
  range_key      = "Timestamp"
  billing_mode   = "PROVISIONED"
  read_capacity  = 10
  write_capacity = 10
  tags = {
    Environment = "Production"
    Project     = "Demo"
  }
}


# Cost and Usage Report Main Configuration
# Set Up Terraform Main Configuration:
module "s3_Automation" {
  source = "../CostREport/s3_Automation"
}

module "lambda_Automation" {
  source = "../CostREport/lambda_Automation"
}

module "eventbridge" {
  source = "../CostREport/eventBridge_Automation"
}

module "ses" {
  source = "../CostREport/SES_Automation"
}



