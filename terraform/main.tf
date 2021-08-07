terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.52.0"
    }
  }
}

provider "aws" {
  # Configuration options in .aws folder
  region = "us-east-2"
}

resource "aws_instance" "wordpress_ec2" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.public_key
  vpc_security_group_ids = [var.security_preset]
  root_block_device {
    # device_name = "/dev/sda1"
    volume_type = "gp2"
    volume_size = 30
  }
  tags = {
    Name = "WordPress Automated Deployment"
  }
}