
// Bucket name variable
variable "bucket_name" {
  type        = string
  description = "Name of the AWS S3 bucket this website will be published to."

  validation {
    condition = length(var.bucket_name) > 7 
    error_message = "The bucket name should contain at least 7 characters."
  }

}
