terraform {
	required_providers {
		aws = {
			source = "hashicorp/aws"
			version = "~>5.3.0"
		}
	}
}

provider "aws" {
	region = "us-east-1"
}

resource "aws_s3_bucket" "my_s3_bucket" {
	bucket = "vishal12344321"
	tags = {
		Name = "vishal12344321"
	}
}
