terraform{
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

resource "aws_instance" "my_ec2_instance" {
	ami = "ami-053b0d53c279acc90"
	count = 1
	instance_type = "t2.micro"
	tags = {
		Name = "terraform-auto-create"
	}
}

output "aws_ec2_public_ip" {
	value = aws_instance.my_ec2_instance[*].public_ip
}
