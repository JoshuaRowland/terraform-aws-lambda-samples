resource "aws_iam_role" "lambda_hello_world" {
  name_prefix        = "${local.deployment_name}-hello-world-"
  path               = "/${local.region}/"
  description        = "Role for example lambda functions."
  assume_role_policy = data.aws_iam_policy_document.assume_role_lambda.json

  managed_policy_arns = [
    aws_iam_policy.lambda_hello_world.arn
  ]

  lifecycle {
    create_before_destroy = true
  }
}
