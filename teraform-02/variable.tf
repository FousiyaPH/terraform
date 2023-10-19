variable "ec2_instance_type" {
  type    = string
  default = "t2.nano"
}

variable "image_id" {
  type = string
}

variable "instance_name" {
  type    = list(any)
  default = ["Development", "Test", "Production"]
}