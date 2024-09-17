provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    git_commit           = "24d5be636c9335e46a271eeff03716ad8ba2094e"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-09-17 18:59:38"
    git_last_modified_by = "laughmk@gmail.com"
    git_modifiers        = "laughmk"
    git_org              = "k-laughman"
    git_repo             = "prisma-cloud-devsecops-workshop"
    yor_name             = "dev_s3"
    yor_trace            = "0e9ef0a4-a9ae-4dbf-b7b1-bdfc4e1a5ce9"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}