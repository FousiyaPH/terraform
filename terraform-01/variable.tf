variable "ec2_instance_type" {
  type    = string
  default = "t2.micro"
}
variable "instance_name" {
  type = number
}

variable "image_id" {
  type = string
}