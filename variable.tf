
variable "aws_vpc" {
  description = "CIDR for the vpc"
  default = "10.0.0.0/16"
}


variable "aws_public_subnet" {
  description = "CIDR range of public subnet"
  type = string
  default = "10.0.1.0/24"
}

variable "aws_public_subnet1" {
  description = "CIDR range of public subnet"
  type = string
  default = "10.0.3.0/24"
}

variable "aws_private_subnet" {
  description = "CIDR range of private subnet"
  type = string
  default = "10.0.2.0/24"
}

variable "aws_private_subnet1" {
  description = "CIDR range of private subnet"
  type = string
  default = "10.0.4.0/24"
}

variable "aws_db_subnet" {
  description = "CIDR range of db subnet"
  type = string
  default = "10.0.51.0/24"
}

variable "aws_db_subnet1" {
  description = "CIDR range of db subnet"
  type = string
  default = "10.0.53.0/24"
}

variable "aws_instance" {
  description = "instance type"
  type = string
  default = "t2.micro"
}



