provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "devsecops_s3" {
  bucket_prefix = "devsecops-"

  tags = {
    Environment          = "Dev"
    git_commit           = "849d2e58e480dd27f32120f04de21ab20c1411cc"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-09-18 19:08:26"
    git_last_modified_by = "laughmk@gmail.com"
    git_modifiers        = "laughmk"
    git_org              = "k-laughman"
    git_repo             = "prisma-cloud-devsecops-workshop"
    yor_name             = "devsecops_s3"
    yor_trace            = "2263bf6c-3fd0-41c9-8cc1-4ee6476cec83"
  }
}

resource "aws_s3_bucket_ownership_controls" "devsecops_s3" {
  bucket = aws_s3_bucket.devsecops_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}