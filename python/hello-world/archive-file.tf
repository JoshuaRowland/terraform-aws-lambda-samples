data "archive_file" "hello_world" {
  type        = "zip"
  source_dir  = "${path.module}/lambda/hello-world/"
  output_path = "${path.module}/lambda/hello-world.zip"
}
