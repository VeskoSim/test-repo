resource "aws_s3_bucket" "bucket" {
  bucket = "state-terraform-pragmatic-ves"
}

resource "aws_dynamodb_table" "tarraform_state_lock" {
  name           = "terraform-state-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}
