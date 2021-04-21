provider "aws" {
    // The region and the profile can be set as needed 
    #region  = ""
    #profile = ""
}

variable "bucket_name" {}


// Calling the S3 module
module "s3_module" {
  source      = "../s3_module"
  bucket_name = var.bucket_name
}

// Output of the website link
output "website_endpoint" {
  value = module.s3_module.website_endpoint
}

// Output of the bucket name
output "name-of-the-bucket" {
  value = module.s3_module.name-of-the-bucket
}