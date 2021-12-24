provider "aws" {
   region     = "eu-central-1"

}

resource "aws_instance" "vm_variable" {

   ami           = "ami-0767046d1677be5a0"
   instance_type =  "t2.micro"
   count = var.instance_count

   tags = {
           Name = "Terraform_EC2"
   }
}

variable "instance_count" {
  description = "EC2 instance count"
  type        = number
  default     = 2
}
