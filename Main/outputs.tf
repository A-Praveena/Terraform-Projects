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

