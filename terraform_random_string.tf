resource "random_string" "password_string" {
	length = 20
	special = true
	override_special = "!@#$%^&*()_+"
}

resource "local_file" "file2" {
	filename = "/home/vishal/Downloads/terraform_auto_file/file2.txt"
	content = "This is the file2 created with the help of terraform"
	file_permission = "0744"
}

output "password_string" {
	value = random_string.password_string[*].result
}
