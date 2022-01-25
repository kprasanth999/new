# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = var.aws-vpc-cidr
  instance_tenancy = "default"
  tags = {
    Name = "main"
    Environment = terraform.workspace
  }
}