# Set Up Amazon EventBridge to Trigger Lambda:
resource "aws_cloudwatch_event_rule" "cost_report_rule" {
  name        = "cost-report-delivery"
  description = "Trigger Lambda when a new Cost and Usage Report is delivered"

  event_pattern = jsonencode({
    source = ["aws.s3"]
    detail_type = ["AWS API Call via CloudTrail"]
    detail = {
      eventSource = ["s3.amazonaws.com"]
      eventName   = ["PutObject"]
      requestParameters = {
        bucketName = aws_s3_bucket.cost_and_usage_report.bucket
      }
    }
  })
}

resource "aws_cloudwatch_event_target" "cost_report_lambda_target" {
  rule = aws_cloudwatch_event_rule.cost_report_rule.name
  arn  = aws_lambda_function.cost_report_processor.arn
}

resource "aws_lambda_permission" "allow_eventbridge" {
  statement_id  = "AllowExecutionFromEventBridge"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.cost_report_processor.function_name
  principal     = "events.amazonaws.com"
  source_arn    = aws_cloudwatch_event_rule.cost_report_rule.ar
}