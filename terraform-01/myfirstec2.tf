provider "aws" {
  region = "eu-west-1"
}
resource "aws_instance" "myfirstec2-2" {
  ami           = "ami-0b9fd8b55a6e3c9d5"
  instance_type = var.ec2_instance_type
  tags = {
    Name = var.instance_name
  }
}