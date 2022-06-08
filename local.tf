locals {
  vpc_id= aws_vpc.mcm.id
  public_subnet_id= aws_subnet.public_subnet.id
  private_subnet_id= aws_subnet.private_subnet.id
  private_subnet1_id= aws_subnet.private_subnet1.id
  
}