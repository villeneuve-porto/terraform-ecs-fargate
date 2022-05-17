# logs.tf

# Set up CloudWatch group and log stream and retain logs for 30 days
resource "aws_cloudwatch_log_group" "cb_log_group" {
  name              = var.app_log_group_name
  retention_in_days = 30

  tags = {
    Name = var.app_log_group_name
  }
}

resource "aws_cloudwatch_log_stream" "cb_log_stream" {
  name           = var.app_log_stream_name
  log_group_name = aws_cloudwatch_log_group.cb_log_group.name
}

