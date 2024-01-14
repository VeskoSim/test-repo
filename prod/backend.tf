terraform {
  backend "s3" {
    bucket         = "state-terraform-pragmatic-ves" 
    key            = "prod/terraform.tfstate"
    region         = "eu-central-1"
    encrypt        = true
    dynamodb_table = "terraform-lock-table"
  }
}
