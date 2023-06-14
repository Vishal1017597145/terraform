resource "local_file" "file11" {
	filename = "/home/vishal/Downloads/file1_auto.txt"
	content = "Hy my Name is Vishal Kumar Singh and my aim is to become a devops Engineer"
}

resource "local_file" "file61" {
	filename = var.filename[0]
	content = var.content["content1"]
}

resource "local_file" "file51" {
        filename = var.filename[1]
        content = var.content["content2"]
}

output "aws_ec2_object" {
	value = var.aws_ec2_object 
}

