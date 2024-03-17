data "aws_iam_policy_document" "assume_role_lambda" {

  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }
  }
}

data "aws_iam_policy_document" "lambda_hello_world" {

  statement {
    effect    = "Allow"
    resources = ["*"]
    actions = [
      "s3:ListAllMyBuckets"
    ]
  }

  statement {
    effect = "Allow"

    actions = [
      "logs:CreateLogGroup",
      "logs:CreateLogStream",
      "logs:PutLogEvents"
    ]

    resources = [
      "arn:${local.aws_partition}:logs:${local.region}:${local.account_id}:log-group:*",
      "arn:${local.aws_partition}:logs:${local.region}:${local.account_id}:log-group:*:log-stream:*"
    ]
  }
}
