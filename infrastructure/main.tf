############################################
# Get Default VPC
############################################

data "aws_vpc" "default" {
  default = true
}

############################################
# Security Group Module
############################################

module "security_group" {

  source = "../modules/security-group"

  security_group_name = "terraform-demo-sg"

  description = "Security Group for EC2"

  vpc_id = data.aws_vpc.default.id

}

############################################
# EC2 Module
############################################

module "ec2" {

  source = "../modules/ec2"

  instance_name = "terraform-demo"

  instance_type = var.instance_type

  security_group_id = module.security_group.security_group_id

}