provider "aws" {
  region = "eu-north-1"
}

resource "aws_s3_bucket" "portfolio_bucket" {
  bucket = "tabish-terraform-portfolio-2026-v3"
}

resource "aws_s3_bucket_public_access_block" "example" {
  bucket                  = aws_s3_bucket.portfolio_bucket.id
  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_website_configuration" "hosting" {
  bucket = aws_s3_bucket.portfolio_bucket.id
  index_document {
    suffix = "index.html"
  }
}

resource "aws_s3_bucket_policy" "public_read_access" {
  bucket = aws_s3_bucket.portfolio_bucket.id
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "PublicReadGetObject",
      "Effect": "Allow",
      "Principal": "*",
      "Action": [
        "s3:GetObject"
      ],
      "Resource": [
        "arn:aws:s3:::${aws_s3_bucket.portfolio_bucket.id}/*"
      ]
    }
  ]
}
EOF
}

resource "aws_s3_object" "index_file" {
  bucket       = aws_s3_bucket.portfolio_bucket.id
  key          = "index.html"
  source       = "index.html"
  content_type = "text/html"
}

output "website_live_url" {
  value       = "http://${aws_s3_bucket.portfolio_bucket.bucket}.s3-website.eu-north-1.amazonaws.com"
  description = "This is the live link to your website!"
}