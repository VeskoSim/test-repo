terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0"
    }
  }
}

provider "aws" {
  region="eu-central-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "ves-pragmatic-2023-devops"
}

module "s3" {
  source = "../modules/"
  env = "dev"
}
