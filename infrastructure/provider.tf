provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = "terraform-drift"
      Environment = "dev"
      ManagedBy   = "Terraform"
      Owner       = "Souvik"
    }
  }
}