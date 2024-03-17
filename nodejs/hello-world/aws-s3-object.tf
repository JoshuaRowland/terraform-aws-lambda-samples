resource "aws_s3_object" "hello_world" {
  bucket      = aws_s3_bucket.lambda_repository.bucket
  key         = "lambda-packages/hello-world.zip"
  source      = data.archive_file.hello_world.output_path
  source_hash = data.archive_file.hello_world.output_base64sha256

  depends_on = [
    data.archive_file.hello_world
  ]
}
