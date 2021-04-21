

// defining and configuring the static website
resource "aws_s3_bucket" "static_website" {
  bucket = var.bucket_name
  acl    = "public-read"

  website {
    index_document = "index.html"
  }
}


// defining the index file
resource "aws_s3_bucket_object" "index" {
  bucket       = aws_s3_bucket.static_website.bucket
  key          = "index.html"
  source       = "html/index.html"
  content_type = "text/html"
  etag         = md5(file("html/index.html"))
  acl          = "public-read"
}