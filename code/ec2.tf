provider "aws" {
    region = "eu-west-1"
    version = "~>2.70"
}

resource "aws_instance" "vm-2" { 
    ami = "ami-0b9fd8b55a6e3c9d5"
    instance_type = "t2.micro"
  
}


resource "aws_eip" "lb" {
    vpc = true
}

resource "aws_eip_association" "eip_assoc" {
    instance_id = aws_instance.vm-2.id
    allocation_id = aws_eip.lb.id
  
}
    
    
    



 
    
    


