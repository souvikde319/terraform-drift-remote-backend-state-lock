provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = "terraform-drift"
      Environment = "bootstrap"
      ManagedBy   = "Terraform"
      Owner       = "Souvik"
    }
  }
}