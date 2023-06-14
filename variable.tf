variable "filename" {
	type = list
	default = ["/srv/file10.txt","/srv/file11.txt"]
}

variable "content" {
	type = map
	default = {
		"content1" = "my name is cli1 content"
		"content2" = "my name is cli2 content"
	}
}



variable "aws_ec2_object" {
	type = object({
		name = string
		instances = number
		key = list(string)
		ami-id = string
	})
	default = {
		name = "aws_ec2"
		instances = 4
		key = ["key1.pem","key2.pem"]
		ami-id = "ubuntu-123456789"
	}
}
