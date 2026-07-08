terraform {
  backend "s3" {
    bucket         = "souvik-terraform-state-695546378068"
    key            = "dev/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "souvik-terraform-lock-695546378068"
    encrypt        = true
  }
}