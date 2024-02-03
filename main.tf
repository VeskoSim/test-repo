terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.31.0"
    }
  }
}

provider "aws" {
  region="eu-sentral-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "ves-pragmatic-2023-devops"
}
