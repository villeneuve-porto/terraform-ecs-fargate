//resource "aws_s3_bucket" "bucket" {
//  bucket = var.aws_s3_bucket_name
//  acl    = "private"

//  versioning {
//    enabled = false
//  }
//  tags = {
//    Name        = var.aws_s3_bucket_name
//    Environment = var.environment_name
//  }
//}