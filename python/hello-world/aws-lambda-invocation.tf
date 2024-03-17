resource "aws_lambda_invocation" "hello_world" {
  function_name = aws_lambda_function.hello_world.function_name

  input = jsonencode({
    my-name = "Batman"
  })

  triggers = {
    lambda-source-code-hash = aws_lambda_function.hello_world.source_code_hash
    plan-timestamp          = plantimestamp()
  }
}
