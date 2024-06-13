provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-cetech"

  tags = {
    Environment          = "Dev"
    git_commit           = "46406cb32b7a9c4ad2c92e0dd43a4e1e4d6153fc"
    git_file             = "code/simple_s3.tf"
    git_last_modified_at = "2024-06-13 14:43:10"
    git_last_modified_by = "63737479+k-laughman@users.noreply.github.com"
    git_modifiers        = "63737479+k-laughman/tprendervill"
    git_org              = "k-laughman"
    git_repo             = "prisma-cloud-devsecops-workshop"
    yor_name             = "dev_s3"
    yor_trace            = "61012722-9bde-4b2c-9dab-8804a957ff50"
  }
}


