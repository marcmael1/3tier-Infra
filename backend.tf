terraform {
  backend "s3" {
    bucket         = "marc-tf-rp"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tf-rp-state-lock"
    profile = "marc"
  }
}
