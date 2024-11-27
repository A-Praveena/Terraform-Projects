resource "aws_lambda_function" "example" {
  function_name = var.lambda_function_name
  role          = var.lambda_execution_role_arn
  handler       = var.handler
  runtime       = var.runtime
  filename      = var.lambda_zip_path

  environment {
    variables = var.environment_variables
  }
}

output "lambda_function_name" {
  value = aws_lambda_function.example.function_name
}
