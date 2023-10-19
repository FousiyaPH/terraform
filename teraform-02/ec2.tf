provider "aws" {
  region = "eu-west-1"
}

resource "aws_instance" "myec2" {
  ami           = var.image_id
  instance_type = var.ec2_instance_type
  count         = 3
  tags = {
    Name = var.instance_name[count.index]

  }
}