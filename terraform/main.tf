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
}

resource "aws_instance" "devops_server" {
  ami           = "ami-019715e0d74f695be"
  instance_type = "t3.micro"

  security_groups = [aws_security_group.devops_sg.name]

  tags = {
    Name = "DevOps-Server"
  }
}
