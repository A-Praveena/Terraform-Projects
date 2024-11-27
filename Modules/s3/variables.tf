variable "bucket_name" {
  description = "The name of the S3 bucket"
  type        = string
  default = "my-static-demo-website-new"
}

variable "index_document" {
  description = "The name of the index document"
  type        = string
}

variable "error_document" {
  description = "The name of the error document"
  type        = string
}

variable "index_html_source" {
  description = "Path to the index.html file"
  type        = string
  default = "../../Files/index.html"
}

variable "error_html_source" {
  description = "Path to the error.html file"
  type        = string
  default = "../../Files/index.html"
}

variable "tags" {
  description = "A map of tags to assign to the bucket"
  type        = map(string)
  default = {
    Environment = "Production"
    Name        = "my-static-demo-website"
  }
  //default="my-static-demo-website"
}
