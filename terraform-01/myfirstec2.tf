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

#The problem with the below code is that all the 5 IAM user will have the same name
# while executing terraform plan command will show the error creating IAM User (Aina): EntityAlreadyExists: User with name Aina already exists
# create one user named Aina
resource "aws_iam_user" "user" {
  name  = "Aina"
  count = 5
}

#count.index  allows us to fetch the index of each iteration in the loop
# The below code will be create 5 IAM users named as loadbalancer.0,loadbalancer.1,loadbalancer.2,loadbalancer.3,loadbalancer.4 

resource "aws_iam_user" "user-1" {
  name  = "loadbalancer.${count.index}"
  count = 5
}
