resource "null_resource" "create_folder" {
	provisioner "local-exec" {
		command = "mkdir -p /home/vishal/Downloads/terraform_auto_folder"
	}
}
