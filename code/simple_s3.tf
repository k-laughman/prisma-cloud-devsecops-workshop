chprovider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-cetech"

  tags = {
    Environment          = "Dev"
    git_commit           = "9949f3cc1d780d3725a07fd0627f0ac695039b6d"
    git_file             = "code/simple_s3.tf"
    git_last_modified_at = "2024-06-13 14:44:18"
    git_last_modified_by = "63737479+k-laughman@users.noreply.github.com"
    git_modifiers        = "63737479+k-laughman/tprendervill"
    git_org              = "k-laughman"
    git_repo             = "prisma-cloud-devsecops-workshop"
    yor_name             = "dev_s3"
    yor_trace            = "61012722-9bde-4b2c-9dab-8804a957ff50"
  }
}


