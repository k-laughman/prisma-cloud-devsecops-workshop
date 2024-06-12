provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-klaughma"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "50191aec-bade-495b-9bca-3f8430988415"
    git_commit           = "acb102d2195fe56af16f70e19a16ba307e40fd62"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-06-12 21:12:56"
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

