resource "aws_iam_policy" "lambda_hello_world" {
  name_prefix = "${local.deployment_name}-hello-world-"
  path        = "/${local.region}/"
  description = "Policy for example lambda functions."
  policy      = data.aws_iam_policy_document.lambda_hello_world.json

  lifecycle {
    create_before_destroy = true
  }
}
