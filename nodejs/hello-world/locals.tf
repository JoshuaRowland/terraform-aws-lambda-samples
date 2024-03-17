locals {
  deployment_name = "tf-lambda-sample"
  region          = data.aws_region.current.name
  account_id      = data.aws_caller_identity.current.account_id
  aws_partition   = data.aws_partition.current.partition
}
