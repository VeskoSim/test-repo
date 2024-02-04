resource "aws_s3_bucket" "example" {
  bucket = "${var.env}-ves-pragmatic-2023-new-devops"
}
