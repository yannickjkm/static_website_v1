

// website endpoint output to be display when running terraform
output "website_endpoint" {
  description = "The public url of this website."
  value = aws_s3_bucket.static_website.website_endpoint
}


// bucket name output to be display when running terraform
output "name-of-the-bucket" {
  description = "The name of the bucket created"
  value       = var.bucket_name
}