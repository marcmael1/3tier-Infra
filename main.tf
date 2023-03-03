module "vpc" {
  source = "./modules/aws_vpc"
  for_each = var.vpc_config

  vpc_cidr = each.value.vpc_cidr
  tags = each.value.tags
}