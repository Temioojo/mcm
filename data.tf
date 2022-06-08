
data "aws_availability_zones" "mcm" {
  state = "available"
}

data "aws_ami" "mcm" {
    most_recent = true
  owners = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-*-gp2*"]
  }
}

data "aws_key_pair" "mcm" {
  key_name = "mcm" 
}