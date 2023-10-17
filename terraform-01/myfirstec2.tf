provider "aws" {
  region = "eu-west-1"
}
resource "aws_instance" "myfirstec2-2" {
  ami           = var.image_id
  instance_type = var.ec2_instance_type
  tags = {
    Name = var.instance_name
  }
}