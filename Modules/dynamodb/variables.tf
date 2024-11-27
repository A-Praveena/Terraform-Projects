variable "table_name" {
  description = "The name of the DynamoDB table"
  type        = string
}

variable "hash_key" {
  description = "The hash key of the DynamoDB table"
  type        = string
}

variable "range_key" {
  description = "The range key of the DynamoDB table"
  type        = string
}

variable "billing_mode" {
  description = "The billing mode for the DynamoDB table"
  type        = string
  default     = "PROVISIONED"
}

variable "read_capacity" {
  description = "The read capacity units for the table (if billing_mode is PROVISIONED)"
  type        = number
  default     = 5
}

variable "write_capacity" {
  description = "The write capacity units for the table (if billing_mode is PROVISIONED)"
  type        = number
  default     = 5
}

variable "hash_key_type" {
  description = "The type of the hash key"
  type        = string
  default     = "S" # String
}

variable "range_key_type" {
  description = "The type of the range key"
  type        = string
  default     = "S" # String
}

variable "tags" {
  description = "A map of tags to assign to the DynamoDB table"
  type        = map(string)
}
