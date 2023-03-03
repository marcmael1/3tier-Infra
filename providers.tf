provider "aws" {
  region  = var.region
  shared_config_files = var.shared_config_files

  default_tags {
    tags = var.tags
  }
}