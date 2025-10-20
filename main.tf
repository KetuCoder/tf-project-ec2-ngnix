provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "web" {
    ami = var.ami_id
    instance_type = var.instance_type

    vpc_security_group_ids = [aws_security_group.nginx_sg.id]

    user_data = <<-EOF
                #!/bin/bash
                sudo apt update -y
                sudo apt install nginx -y
                sudo systemctl start nginx
                sudo systemctl enable nginx
                EOF

    tags = {
        Name = "nginx-server"
    }
}

resource "aws_security_group" "nginx_sg" {
    name = "nginx-sg"
    description = "Allow HTTP and SSH"

    ingress {
        description = "SSH"
        from_port = 22
        to_port = 22
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        description = "HTTP"
        from_port = 80
        to_port = 80
        protocol = "TCP"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        description = "HTTP"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}
