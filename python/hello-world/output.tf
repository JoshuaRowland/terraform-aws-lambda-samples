output "hello_world_response" {
  value = jsondecode(aws_lambda_invocation.hello_world.result)["message"]
}
