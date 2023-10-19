provider "aws" {
    region = "eu-west-1"
    version = "~>2.70"
}

resource "aws_instance" "vm-01" { 
    ami = "ami-0b9fd8b55a6e3c9d5"
    instance_type = "t2.micro"
    
}

resource "aws_s3_bucket" "mys3"{
    bucket = "fousiya-terraform-batch-01"
}

    
    
    


