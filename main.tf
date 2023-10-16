provider "aws" {
    region = "eu-west-1"
    version = "~>2.70"
}

resource "aws_instance" "vm" {
    ami = "ami-0b9fd8b55a6e3c9d5"
    instance_type = "t2.micro"
  
}