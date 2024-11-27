variable "lambda_function_name" {
  description = "The name of the Lambda function"
  type        = string
}

variable "handler" {
  description = "The handler function for Lambda"
  type        = string
  default     = "index.handler"
}

variable "runtime" {
  description = "The runtime for the Lambda function"
  type        = string
  default     = "nodejs14.x"
}

variable "api_gateway_arn" {
  description = "The API Gateway ARN"
  type        = string
}
