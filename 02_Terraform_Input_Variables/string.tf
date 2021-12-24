provider "aws" {
   region     = "us-east-1"
  
}

resource "aws_instance" "vm1_variable" {
   
   ami           = "ami-0767046d1677be5a0"
   instance_type = var.instance_type
   
   tags = {
           Name = "Terraform_EC2"
   }
}

variable "instance_type" {
   description = "Instance type t2.micro"
   type        = string
   default     = "t2.micro"
}
