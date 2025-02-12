resource "aws_s3_bucket" "s3_bucket" {
  bucket = var.bucket_name
  force_destroy = true
}

resource "aws_s3_bucket_public_access_block" "s3_bucket_public_access_block" {
  bucket = aws_s3_bucket.s3_bucket.bucket

  block_public_acls = true
  block_public_policy = true
  ignore_public_acls = true
  restrict_public_buckets = true
}
