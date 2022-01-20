provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "single-instance"

  ami           = "ami-08e4e35cccc6189f4"
  instance_type = "t2.micro"
  subnet_id     = "subnet-cdae2aab"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}