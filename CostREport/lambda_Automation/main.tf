//create the Lambda function that will process the CUR data.
resource "aws_lambda_function" "cost_report_processor" {
  filename         = "lambda_function_payload.zip" # The path to your Lambda function code
  function_name    = "process_cost_report"
  role             = aws_iam_role.lambda_exec.arn
  handler          = "index.handler"
  runtime          = "nodejs14.x"

  environment {
    variables = {
      S3_BUCKET = aws_s3_bucket.cost_and_usage_report.bucket
    }
  }

  # Assuming you've zipped your Lambda function into this file
  source_code_hash = filebase64sha256("lambda_function_payload.zip")
}

resource "aws_iam_role" "lambda_exec" {
  name               = "lambda_exec_role"
  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action    = "sts:AssumeRole"
        Effect    = "Allow"
        Principal = {
          Service = "lambda.amazonaws.com"
        }
      }
    ]
  })
}

resource "aws_iam_policy_attachment" "lambda_policy_attach" {
  name       = "lambda_policy_attach"
  roles      = [aws_iam_role.lambda_exec.name]
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
}