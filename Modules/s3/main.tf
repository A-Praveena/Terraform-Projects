resource "aws_s3_bucket" "static_website" {
  bucket = var.bucket_name

  
  website {
    index_document = var.index_document
    error_document = var.error_document
  }

  tags = var.tags
}

resource "aws_s3_bucket_object" "index_html" {
  bucket = aws_s3_bucket.static_website.id
  key    = var.index_document
  source = var.index_html_source
  
}

resource "aws_s3_bucket_object" "error_html" {
  bucket = aws_s3_bucket.static_website.id
  key    = var.error_document
  source = var.error_html_source

}
