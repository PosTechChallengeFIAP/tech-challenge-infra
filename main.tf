provider "aws" {
  region = "us-west-2"
}

terraform {
  backend "s3" {
    bucket         = "tech-challenge-tf-state-bucket"
    key            = "terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "terraform-lock"
    encrypt        = true
  }
}