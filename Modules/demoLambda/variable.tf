variable "lambda_function_name" {
  description = "The name of the Lambda function"
  type        = string
}

variable "lambda_execution_role_arn" {
  description = "The ARN of the IAM role that Lambda assumes when it executes the function"
  type        = string
}

variable "handler" {
  description = "The function handler (e.g., 'index.handler')"
  type        = string
}

variable "runtime" {
  description = "The Lambda runtime environment (e.g., 'nodejs14.x')"
  type        = string
}

variable "lambda_zip_path" {
  description = "The path to the zipped Lambda function code"
  type        = string
}

variable "environment_variables" {
  description = "A map of environment variables to pass to the Lambda function"
  type        = map(string)
  default     = {}
}
