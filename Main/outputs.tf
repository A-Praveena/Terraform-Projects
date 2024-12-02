# output "vpc_id" {
#   value = module.vpc.vpc_id
# }

# output "instance_id" {
#   value = module.ec2.instance_id
# }
# output "website_url" {
#   value = aws_s3_bucket.static_website.website_url
#   description = "The URL of the static website hosted on S3"
# }

output "dynamodb_table_name" {
  value = module.dynamodb.table_name
}

output "dynamodb_table_arn" {
  value = module.dynamodb.table_arn
}

# output "website_url" {
#   value = module.static_website.website_url
# }


## CostUsage and Report Outputs
output "s3_bucket" {
  value = aws_s3_bucket.cost_and_usage_report.bucket
}

output "lambda_function" {
  value = aws_lambda_function.cost_report_processor.function_name
}



