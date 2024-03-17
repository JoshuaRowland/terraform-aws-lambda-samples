resource "aws_s3_bucket" "lambda_repository" {
  bucket_prefix = "${local.deployment_name}-"
  force_destroy = true
}
