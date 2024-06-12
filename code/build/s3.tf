provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-klaughman"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "50191aec-bade-495b-9bca-3f8430988415"
    git_commit           = "7a66745e700907e85be98938d0acb4ee946d8399"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-06-12 20:58:04"
    git_last_modified_by = "63737479+k-laughman@users.noreply.github.com"
    git_modifiers        = "63737479+k-laughman"
    git_org              = "k-laughman"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

