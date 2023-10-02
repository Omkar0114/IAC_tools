provider "aws" {
    access_key = ""
    secret_key = ""
    region = "us-east-1"
}

resource "aws_instance" "app_server" {
    ami = "ami-03a6eaae9938c858c"
    instance_type = "t2.micro"

    tags = {
      Name: "tfInstance"
    }
}

output "instance_id" {
    value = aws_instance.app_server.id
}

output "public_ip" {
    value = aws_instance.app_server.public_ip
}

output "private_ip" {
    value = aws_instance.app_server.private_ip
}
