resource "aws_s3_bucket" "bucket" {
  bucket = "digger-poc-tf"
  tags = {
    Name        = "My bucket2"
    Environment = "Dev"
  }
}