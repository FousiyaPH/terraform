provider "aws" {
    region = "eu-west-1"
    version = "~>2.70"
}

# after exceuting this code try to execute by changing the instance name (vm-3)- will terminate the vm-2 instance
resource "aws_instance" "vm-2" { 
    ami = "ami-0b9fd8b55a6e3c9d5"
    instance_type = "t2.micro"
  
}

# removing below code and exceuting(terraform apply) will not destoy the EC2 resource
# but will be destroy the configuration for the below code from the tfstate file

resource "aws_eip" "lb" {
    vpc = true
}

resource "aws_eip_association" "eip_assoc" {
    instance_id = aws_instance.vm-2.id
    allocation_id = aws_eip.lb.id
  
}
    
    
    



 
    
    


