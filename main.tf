provider "aws" {
  profile = "devops-user"     # Your configured AWS profile
  region  = "us-east-1"
}

resource "aws_instance" "my_ec2" {
  ami           = "ami-0c02fb55956c7d316"  # Amazon Linux 2
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-EC2-Demo"
  }
}

