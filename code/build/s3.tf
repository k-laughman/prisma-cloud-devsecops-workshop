provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "devsecops_s3" {
  bucket_prefix = "devsecops-"

  tags = {
    Environment      = "Dev"
  }
}

resource "aws_s3_bucket_ownership_controls" "devsecops_s3" {
  bucket = aws_s3_bucket.devsecops_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}