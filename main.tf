module "aws_s3_bucket" {
  source   = "./modules/aws_s3"
  for_each = var.s3_config

  bucket = each.value.bucket
  tags   = each.value.tags
}

module "dynamodb_table" {
  source = "./modules/aws_dynamodb_table"
  for_each = var.dynamodb_config

  name = each.value.name
  billing_mode = each.value.billing_mode
  read_capacity = each.value.read_capacity
  write_capacity = each.value.write_capacity
  tags = each.value.tags
}