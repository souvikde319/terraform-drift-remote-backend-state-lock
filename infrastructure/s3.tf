resource "aws_s3_bucket" "manual_bucket" {
  bucket = "souvik-manual-import-695546378068"

  tags = {
    Name        = "manual-import-bucket"
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}