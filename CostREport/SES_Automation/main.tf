# Configure SES for Sending Email Notifications:
resource "aws_ses_domain_identity" "domain_identity" {
  domain = "example.com"  # Replace with your domain
}

resource "aws_ses_email_identity" "email_identity" {
  email = "no-reply@example.com"  # Replace with your email
}

resource "aws_ses_template" "cost_email_template" {
  name = "cost-report-template"
#   html_part = <<HTML
#     <html>
#       <head></head>
#       <body>
#         <h1>AWS Cost Report</h1>
#         <p>Here is your AWS cost report:</p>
#         <p>{{Cost}}</p>
#       </body>
#     </html>
#   HTML

#   text_part = <<TEXT
#     AWS Cost Report
#     Here is your AWS cost report: {{Cost}}
#   TEXT

  subject = "AWS Cost Report"
}

resource "aws_ses_send_email" "send_email" {
  from    = "no-reply@example.com"
  to      = ["recipient@example.com"] # Replace with actual recipient

  subject = "AWS Cost Report Notification"
  body    = jsonencode({
    Html = {
      Data = "<h1>Your AWS Cost Report</h1><p>Cost details here.</p>"
    }
  })

  configuration_set_name = "MyConfigurationSet"
}
