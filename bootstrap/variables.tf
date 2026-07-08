variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "Terraform State Bucket"
  type        = string
}

variable "dynamodb_table" {
  description = "Terraform Lock Table"
  type        = string
}