//create the S3 bucket where the CUR will be stored:
resource "aws_s3_bucket" "cost_and_usage_report" {
  bucket = "my-cost-and-usage-report-bucket"
  
  versioning {
    enabled = true
  }

  lifecycle_rule {
    enabled = true
    prefix = "cur/"
    expiration {
      days = 30
    }
  }

  # Enable the bucket for public access if necessary
  acl = "private"
}