provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "test" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  tags = {
    Name = "Terraform-EC2"
  }
}


