resource "aws_dynamodb_table" "this" {
  name           = var.table_name
  hash_key       = var.hash_key
  range_key      = var.range_key
  billing_mode   = var.billing_mode
  read_capacity  = var.read_capacity
  write_capacity = var.write_capacity

  attribute {
    name = var.hash_key
    type = var.hash_key_type
  }

  attribute {
    name = var.range_key
    type = var.range_key_type
  }

  tags = var.tags
}


