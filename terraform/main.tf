# This creates the "lock" on the cloud side
resource "aws_key_pair" "tf-cloud" {
  key_name   = "tf-cloud-key"
  public_key = file("~/.ssh/tf-cloud-key.pub")
}

resource "aws_security_group" "devops_sg" {
  name        = "devops-security-group"
  description = "Allow SSH and HTTP"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  ingress {
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "devops_server" {
  ami           = "ami-019715e0d74f695be"
  instance_type = "t3.micro"
  key_name      = aws_key_pair.tf-cloud.key_name
  
  security_groups = [aws_security_group.devops_sg.name]

  tags = {
    Name = "DevOps-Server"
  }
}

output "server_public_ip" {
  value = aws_instance.devops_server.public_ip
}