provider "aws" {
   region     = "us-east-1"
 
}


resource "aws_instance" "vm_instance" {

   ami           = "ami-0767046d1677be5a0"
   instance_type =  "t2.micro"
   count = 1
   associate_public_ip_address = var.enable_public_ip

   tags = {
           Name = "Terraform_EC2"
   }

}

variable "enable_public_ip" {
  description = "Enable public IP address"
  type        = bool
  default     = true
}

