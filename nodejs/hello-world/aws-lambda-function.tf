resource "aws_lambda_function" "hello_world" {
  function_name    = "${local.deployment_name}-hello-world"
  description      = "An example Lambda function."
  runtime          = "nodejs20.x"
  handler          = "index.handler"
  architectures    = ["x86_64"]
  memory_size      = 256
  timeout          = 120
  role             = aws_iam_role.lambda_hello_world.arn
  s3_bucket        = aws_s3_bucket.lambda_repository.bucket
  s3_key           = aws_s3_object.hello_world.key
  source_code_hash = data.archive_file.hello_world.output_base64sha256

  environment {
    variables = {
      environment = "dev"
    }
  }

  depends_on = [
    aws_s3_object.hello_world
  ]
}
