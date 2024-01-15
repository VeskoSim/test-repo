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

module "ecr" {
  source = "../modules/ecr/"
  env = "prod"
}
