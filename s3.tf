resource "aws_s3_bucket" "burgerroyale_auth_s3_bucket" {
    bucket = var.bucketName
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.burgerroyale_auth_s3_bucket.id
  acl    = "public-read"
}