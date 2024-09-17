provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    git_commit           = "0c0967315b3692b429dd2c60bb647acfaccf906a"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-09-17 18:46:50"
    git_last_modified_by = "laughmk@gmail.com"
    git_modifiers        = "63737479+k-laughman/laughmk"
    git_org              = "k-laughman"
    git_repo             = "prisma-cloud-devsecops-workshop"
    yor_name             = "dev_s3"
    yor_trace            = "b79e0964-f418-4751-a2f1-9277e7995972"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}